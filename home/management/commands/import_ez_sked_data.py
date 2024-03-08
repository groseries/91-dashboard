import json
from datetime import datetime
from home.models import SNA, EzSkedEvent
from home.scripts import *


# Assuming jsonData contains the JSON data you provided
from django.core.management.base import BaseCommand


class Command(BaseCommand):
    help = 'Fetch and save EZ Sked data for a list of people'

    def handle(self, *args, **options):
        """
        Function to handle the given options and create or update EzSkedEvent objects based on the provided JSON data.
        """

        with open('ez_sked_data_2024-03-08.json') as f:
            data = f.read()
        jsonData = json.loads(data)

        for date, events in jsonData.items():
            

            for sna_name, sna_events in events.items():
                
                sna = SNA.objects.filter(name=sna_name)[0]           


                existing_events = EzSkedEvent.objects.filter(date=date, sna=sna)
                if existing_events:
                    continue
                for line, event_data in sna_events.items():
                    if "error" in line: 
                        continue
                    event_type = event_data["type"]
                  
                    if event_type == "duty":
                        event = create_duty_event(sna, event_data, date)
                    elif event_type == "simulator":
                        event = create_sim_event(sna, event_data, date)
                    elif event_type == "flight":
                        event = create_flight_event(sna, event_data, date)
                    else:
                        print(f"{Exception}Unknown event type")
                    event.save()

        
     