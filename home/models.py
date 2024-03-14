from django.db import models
from django.utils import timezone
from datetime import date, timedelta
from django.db.models import Count
from collections import Counter

# Create your models here.
event_codes_string = "CO3101 CO3102 CO3201 CO3202 EP2101 EP2102 EP2103 EP2104 TR3101 TR3102 TR3103 TR3104 TR3105 RI1101-5 TR3106 TR3107 TR3108 TR3109 TR3201 TR3202 TR3203 TR3204 TR3205 TR3206 TR3207 TR3208 FAM1101-3 TR3301 TR3302 TR3303 TR2101 TR2102 TR3304 TR3305 TR3306 TR3307 TR3401 TR3402 TR3403 FAM1104 TR6101 TR4101 TR4102 TR4103 TR4104 OCF1101-2 OCF3101 OCF4101 TR4105 TR4106 TR4107 TR4108 TR4109 TR4110 TR2201 TR4111 TR4112 TR4113 TR4290 TR43S1 AN1101 IR3101 IR3102 IR3103 IR3104 IR3105 IR3106 IR3201 IR3202 IR3203 IR2101 IR3204 IR3205 PHASE 2 COMPLETE IR4101 IR4102 IR4103 IR4104 IR4105 IR1101-3 IR3301 IR3302 IR3303 IR3490 NTR1101-3 NTR3101 NTR2101 NTR4101 NTR4102 NTR42S1 NTR42S2 FRM1101-6 FRM3101 FRM3102 FRM3103 FRM6101 FRM6102 FRM2101 FRM4101 FRM4102 FRM4103 FRM4104 FRM4105 FRM4106 FRM4107 FRM4108 FRM42S1 FRM42S2 DIV1101-2 DIV6101 DIV4101 DIV4102 DIV4103 DIV42S1 NFR1101-2 NFR3101 NFR2101 NFR4101 NFR4102 NFR42S1 FCL1101-3 FCL3101 FCL2101 FCL4101 FCL4S01 FCL4S02 FCL4S90 TAC1101-3 TAC6101 TAC6102 TAC4101 TAC4102 TAC4103 TAC4104 TAC42S1 TAC42S2 TAC42S3 TAC42S4 DTF1101-2 DTF6101 DTF4101 DTF4102 AN3101 AN3102 AN4101 AN4102 AN42S1 AN42S2 PHASE 4 COMPLETE STK1101-5 STK3101 STK3102 STK6101 ON1101-3 ON1104-6 STK6102 ON3101 ON3102 ON3103 STK2101 SLL1101-2 STK3103 SLL6101 STK3104 ON4101 ON4102 ON4103 STK4101 STK4102 STK4103 STK4104 STK42S1 STK42S2 SLL4101 SLL4102 TAM1101-2 TAM3101 TAM3102 TAM6101 TAM4101 TAM4102 TAM42S1 STRIKE COMPLETE BFM1101-4 BFM6101 OCF3201 OCF4201 BFM4101 BFM4201 BFM4202 BFM4203 BFM1105-6 BFM43S1 BFM4401 BFM4402 BFM45S1 BFM4601 BFM4602 BFM47S1 BFM47S2 FTX1101-2 FTX3101 FTX6101 FTX4101 FTX4102 FTX4103 FTX42S1 CQ1101-2 CQ4101 CQ3101 CQ3102 CQ4S01 CQ4S02 CQ4S03 CQ4S04 CQ4S05 CQ2101 CQ4S06 CQ4S07 CQ4S08 CQ4S09 CQ4S10 CQ4S11 CQ1103-4 CQ4S90 CQ4S91(1) CQ4S91(2) AN4301 AN44S1 AN44S2"
event_codes_list = event_codes_string.split()


class SNA(models.Model):
    name = models.CharField(max_length=255)
    rank = models.CharField(max_length=255)

    @property
    def num_weekend_events(self):
        return self.ezskedevent_set.filter(date__week_day__in=[6, 7]).count()

    @property
    def num_late_events(self):
        return self.ezskedevent_set.exclude(event_type='duty').filter(brief_time__hour__gt=19).count()

    @property
    def num_early_events(self):
        return self.ezskedevent_set.exclude(event_type='duty').filter(brief_time__hour__lt=6).count()
    
    @property
    def num_duties(self):
        return self.ezskedevent_set.filter(event_type='duty').count()

    @property
    def num_unique_events(self):
        """
        Return the number of unique events excluding events of type 'duty'.
        """
        return self.ezskedevent_set.exclude(event_type='duty').values('event_name').distinct().count()

    @property
    def num_duplicate_event_names(self):
        return self.ezskedevent_set.exclude(event_type='duty').values('event_name').annotate(count=Count('event_name')).filter(count__gt=1).count()


    @property
    def unofficial_onwing(self):
        # Get all events associated with the SNA
        events = self.ezskedevent_set.all()

        # Extract unofficial onwing names from the events
        unofficial_onwing_names = [event.crew_1 for event in events if event.crew_1 and self.name.upper() not in event.crew_1]

        # Use Counter to count occurrences of each unofficial onwing name
        unofficial_onwing_counter = Counter(unofficial_onwing_names)

        # Find the most common unofficial onwing name
        most_common_unofficial_onwing = unofficial_onwing_counter.most_common(1)

        # Return the most common unofficial onwing name (or None if no events or unofficial onwing names)
        return most_common_unofficial_onwing[0][0] if most_common_unofficial_onwing else None

    @property
    def latest_completed_event(self):
        # Get all events associated with the SNA
        events = self.ezskedevent_set.filter(event_name__in=event_codes_list).order_by('-date')

        # Find the latest completed event
        latest_completed_event = events.first()

        return latest_completed_event

    @property
    def num_weekdays_without_events(self):
        start_date = date(2023, 10, 2)  # Assuming October 2, 2023
        end_date = date.today()

        # Query your database for the distinct event dates within the date range
        event_dates = EzSkedEvent.objects.filter(date__range=[start_date, end_date]).values_list('date', flat=True).distinct()

        # Filter out weekends from the list of event dates
        num_weekday_events = len([date for date in event_dates if date.weekday() < 5])

        num_sna_weekday_events = (
            self.ezskedevent_set.filter(date__range=[start_date, end_date])
            .exclude(date__week_day__in=[6, 7])  # Exclude weekends
            .values_list('date__week_day', flat=True)
        ).count()
        
        weekdays_without_events = num_weekday_events -num_sna_weekday_events


        return weekdays_without_events

    def __str__(self):
        return self.name



    
class EzSkedEvent(models.Model):
    date = models.DateField(default=None)
    event_name = models.CharField(max_length=255, default=None)
    
    sna = models.ForeignKey(SNA, on_delete=models.PROTECT, default=None)
    
    event_type = models.CharField(max_length=255, default=None)
    remarks = models.CharField(max_length=255, default=None, null=True, blank=True)
    
    brief_time = models.TimeField(default=None)
    takeoff_time = models.TimeField(default=None, null=True, blank=True)
    land_time = models.TimeField(default=None)

    crew_1 = models.CharField(max_length=255, default=None)
    crew_2 = models.CharField(max_length=255, default=None, null=True, blank=True)



    






    