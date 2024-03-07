import json
from datetime import datetime
from home.models import SNA, EzSkedEvent

# Assuming jsonData contains the JSON data you provided
from django.core.management.base import BaseCommand


class Command(BaseCommand):
    help = 'Fetch and save EZ Sked data for a list of people'

    def handle(self, *args, **options):
        """
        Function to handle the given options and create or update EzSkedEvent objects based on the provided JSON data.
        """

        with open('ezsked_data.json') as f:
            data = f.read()
        jsonData = json.loads(data)

        for date, events in jsonData.items():
            for sna_name, sna_events in events.items():
                sna, created = SNA.objects.get_or_create(name=sna_name, rank="Rank")  # Replace "Rank" with the actual rank
                
                for line, event_data in sna_events.items():
                    if "error" in line: 
                        continue
                    else:
                        event_date = date
                        event_name = event_data["event"]
                        
                        # Check if an event with the same name and date already exists
                        existing_event = EzSkedEvent.objects.filter(date=event_date, event_name=event_name).first()
                        
                        if existing_event is None:
                            event = EzSkedEvent(
                                date=event_date,
                                event_name=event_name,
                                sna=sna,
                                event_type=event_data["type"],
                                remarks=event_data["remark"] if event_data["remark"] is not None else "",
                                brief_time=event_data["brief_time"],
                                takeoff_time=event_data["takeoff_time"],
                                land_time=0,  # You can set the land time as per your requirement
                                crew_1 = event_data['crew_1'],
                                crew_2 = event_data['crew_2']
                            )
                            event.save()