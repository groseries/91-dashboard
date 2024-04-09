from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from datetime import datetime, timedelta
import pytz
from .scripts import *
from .models import *
from django.db.models import Count, IntegerField
from django.db.models.functions import ExtractWeekDay
from django.db.models import Count, F, Case, When, Value, IntegerField, Sum


# Create your views here.


def index(request):

    # Page from the theme 
    return render(request, 'pages/index.html') 

class Weather(View):
    template_name = "weather.html"


    # # Prompt user to choose date (today or tomorrow)
    # date_choice = input("Choose a date (today or tomorrow): ").lower()
    # if date_choice == "tomorrow":
    #     chosen_date = (datetime.now() + timedelta(days=1)).strftime("%Y-%m-%d")
    # else:
    #     chosen_date = today_date


    def get_context_data(self, request, **kwargs):
        today_date = datetime.now().strftime("%Y-%m-%d")
        today_date_time_zulu = datetime.now().strftime("%Y%M%D%H%M")
        zulu_time = datetime.now().strftime("%H:%M:%S")
        context = {}
        # course_id =kwargs["course_id"]
        context['utc'] = zulu_time
        # context['ezsked'] = get_ez_sked_data("Roser","Capt", today_date)
        context['metar'] = []
        context['metar'].append(get_metar_data("KNMM", today_date_time_zulu))
        context['metar'].append(get_metar_data("KMEI", today_date_time_zulu))
        context['metar'].append(get_metar_data("KNJW", today_date_time_zulu))
        context['metar'].append(get_metar_data("KJAN", today_date_time_zulu))

        context['taf'] = []
        context['taf'].append(get_taf_data("KNMM", today_date_time_zulu))
        context['taf'].append(get_taf_data("KMEI", today_date_time_zulu))
        context['taf'].append(get_taf_data("KNJW", today_date_time_zulu))
        context['taf'].append(get_taf_data("KJAN", today_date_time_zulu))

        # context['taf'] = get_taf_data("KNMM", today_date_time_zulu)
        navy_mccain_lat = 32.55
        navy_mccain_lng = -88.55
        context['sunrise_set'] = get_sunrise_sunset(navy_mccain_lat, navy_mccain_lng)
        # context['ahas'] = post_ahas_form("knmm",today_date,zulu_time)

        # context['notams'] = get_notam_data(["KMEI"])
        
        return context

    def get(self, request, *args, **kwargs):
        context = self.get_context_data(request, **kwargs)
        return render(request, self.template_name, context)


class Schedule(View):
    template_name = "schedule_page.html"

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)

class Shortcuts(View):
    template_name = "shortcuts_page.html"

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)

class ClassSchedule(View):
    template_name = "class_schedule_page.html"


    def get_context_data(self, request, **kwargs):
        """
        Go ahead and make this import the event data into the models- then once it works we can back track as required an include a catch to prevent any duplicates
        """

        context={}

        context["studs"]=SNA.objects.all()
        context['sna_today_data']={}
        context['sna_tomorrow_data']={}

        # Get the current date and time in a specific time zone
        desired_time_zone = pytz.timezone('America/Chicago')  # Replace with your desired time zone
        current_time = datetime.now(desired_time_zone)

        # Get today's date in the desired time zone
        today = current_time.strftime("%Y-%m-%d")

        # Get tomorrow's date in the desired time zone
        tomorrow = (current_time + timedelta(days=1)).strftime("%Y-%m-%d")
        dates = [today, tomorrow]
       
        for stud in context["studs"]:

            existing_events = EzSkedEvent.objects.filter(date=today, sna=stud)
            todays_event=existing_events

            if not existing_events:
                json_data = get_ez_sked_data(stud.name,stud.rank, today)
                
                for line, event_data in json_data.items():
                    ## Handle Not on schedule case
                    if "error" in line: 
                        continue

                    event_type = event_data["type"]

                ## Handle different Cases
                    if event_type == "duty":
                        event = create_duty_event(stud, event_data, today)
                    elif event_type == "simulator":
                        event = create_sim_event(stud, event_data, today)
                    elif event_type == "flight":
                        event = create_flight_event(stud, event_data, today)
                    else:
                        print(f"{Exception}Unknown event type")
                    event.save()
                    todays_event=event

            context["sna_today_data"][stud.name] = todays_event
        
        for stud in context["studs"]:

            existing_events = EzSkedEvent.objects.filter(date=tomorrow, sna=stud)
            tomorrows_event=existing_events

            if not existing_events:
                json_data = get_ez_sked_data(stud.name,stud.rank, tomorrow)
                ## Handle Not on schedule case
                
                for line, event_data in json_data.items():
                    ## Handle Not on schedule case
                    if "error" in line: 
                        continue
                        
                    event_type = event_data["type"]

                ## Handle Duty Case
                    if event_type == "duty":
                        event = create_duty_event(stud, event_data, tomorrow)
                    elif event_type == "simulator":
                        event = create_sim_event(stud, event_data, tomorrow)
                    elif event_type == "flight":
                        event = create_flight_event(stud, event_data, tomorrow)
                    else:
                        print(f"{Exception}Unknown event type")
                    event.save()
                    tomorrows_event=event

            context["sna_tomorrow_data"][stud.name] = tomorrows_event
        
        context['todays_date'] = str(today)
        context['tomorrows_date']=str(tomorrow)
        context['tomorrow_sched_url'] = f"https://www.cnatra.navy.mil/scheds/tw1/SQ-VT-9/!{tomorrow}!VT-9!Frontpage.pdf"
        context["today_sched_url"] = f"https://www.cnatra.navy.mil/scheds/tw1/SQ-VT-9/!{today}!VT-9!Frontpage.pdf"
        
        return context

    def get(self, request, *args, **kwargs):
        context = self.get_context_data(request, **kwargs)
        return render(request, self.template_name, context)


class ClassStats(View):
    template_name = "class_stats_page.html"

    def get_context_data(self, request, **kwargs):
        # TODO: Backseat driver: most trunks; No rest for the weary: shortest turn (average time between events on consecutive weekdays); Most O/Is: check remarks
        # TODO: add tiles for Head of the flock, backseat driver, no rest for the weary, etc

        # Query all SNAs
        all_snas = SNA.objects.all()

        # Calculate properties for each SNA
        # self.calculate_properties(all_snas)

        # Sort SNAs by the desired properties
        # weekend_events_ranking = sorted(all_snas, key=lambda x: x.num_weekend_events, reverse=True)
        late_events_ranking = sorted(all_snas, key=lambda x: x.num_late_events, reverse=True)
        early_events_ranking = sorted(all_snas, key=lambda x: x.num_early_events, reverse=True)
        duties_ranking = sorted(all_snas, key=lambda x: x.num_duties, reverse=True)
        # unique_events_ranking = sorted(all_snas, key=lambda x: x.num_unique_events, reverse=True)
        duplicate_event_names_ranking = sorted(all_snas, key=lambda x: x.num_duplicate_event_names, reverse=True)
        latest_scheduled_event_ranking = sorted_snas = sorted(
            all_snas,
            key=lambda sna: event_codes_list.index(getattr(sna.latest_completed_event, 'event_name', None)),
            reverse=True
        )
        weekdays_without_events_ranking = sorted(all_snas, key=lambda x: x.num_weekdays_without_events, reverse=True)
        trunk_events_ranking = sorted(all_snas, key=lambda x: x.trunk_events_count, reverse=True)
        average_time_between_events_ranking = sorted(all_snas, key=lambda x: x.average_time_between_consecutive_events, reverse=False)
        # num_consecutive_events_under_13_hours_ranking = sorted(all_snas, key=lambda x: x.num_consecutive_events_under_13_hours, reverse=True)

        # Include the number of events as a tuple for each SNA in the ranking lists
        # weekend_events_ranking_with_count = [(sna, sna.num_weekend_events) for sna in weekend_events_ranking]
        weekdays_without_events_ranking_with_count = [(sna, sna.num_weekdays_without_events) for sna in weekdays_without_events_ranking]
        late_events_ranking_with_count = [(sna, sna.num_late_events) for sna in late_events_ranking]
        early_events_ranking_with_count = [(sna, sna.num_early_events) for sna in early_events_ranking]
        duties_ranking_with_count = [(sna, sna.num_duties) for sna in duties_ranking]
        # unique_events_ranking_with_count = [(sna, sna.num_unique_events) for sna in unique_events_ranking]
        duplicate_event_names_ranking_with_count = [(sna, sna.num_duplicate_event_names) for sna in duplicate_event_names_ranking]
        unofficial_onwings = [(sna, sna.unofficial_onwing) for sna in all_snas]
        snas_with_latest_scheduled_event = [
            (sna, sna.latest_completed_event.event_name) for sna in latest_scheduled_event_ranking
        ]
        trunk_events_ranking_with_count = [(sna, sna.trunk_events_count) for sna in trunk_events_ranking]
        average_time_between_events_ranking_with_count = [(sna, sna.average_time_between_consecutive_events) for sna in average_time_between_events_ranking]
        # num_consecutive_events_under_13_hours_ranking_with_count = [(sna, sna.num_consecutive_events_under_13_hours) for sna in num_consecutive_events_under_13_hours_ranking]


      
        context = {
                "head_of_flock":snas_with_latest_scheduled_event[0],
                "early_bird":early_events_ranking_with_count[0],
                "night_owl":late_events_ranking_with_count[0],
                "servant_leader": duties_ranking_with_count[0],
                "part_time_sna":weekdays_without_events_ranking_with_count[0],
                "backseat_driver":trunk_events_ranking_with_count[0],
                "no_rest_for_the_weary":average_time_between_events_ranking_with_count[0],
                "repeat_offender":duplicate_event_names_ranking_with_count[0],
                "data": zip(["Unofficial Onwings", "Early Bird","Night Owl","Most Weekdays Off", "Duties","Repeaters/Cancelers", "Head of the Flock", "Most (Scheduled) Trunks", "Shortest Average Turnaround Between Consecutive Events"],
                            [unofficial_onwings, early_events_ranking_with_count, late_events_ranking_with_count, weekdays_without_events_ranking_with_count, duties_ranking_with_count,
                            duplicate_event_names_ranking_with_count, snas_with_latest_scheduled_event, trunk_events_ranking_with_count, average_time_between_events_ranking_with_count]),
            
            # 'weekend_events_ranking': weekend_events_ranking_with_count, This seems like it is too high
            # 'unique_events_ranking': unique_events_ranking_with_count,
            # this is not an accurate representation of who is in the lead - more about who has the most events
        }

        return context

    def get(self, request, *args, **kwargs):
            context = self.get_context_data(request, **kwargs)
            return render(request, self.template_name, context)


def google_photos_slideshow(request):
    # Replace the URL below with the shareable link of your Google Photos album
    album_url = "https://photos.app.goo.gl/SCJhMV3CTfWrTcNK6"
    
    # Pass the album URL to the template
    context = {
        'album_url': album_url
    }
    
    return render(request, 'slideshow.html', context)