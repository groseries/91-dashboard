import json
from datetime import datetime
from home.models import SNA, EzSkedEvent
from home.scripts import *


# Assuming jsonData contains the JSON data you provided
from django.core.management.base import BaseCommand


class Command(BaseCommand):
    help = 'Fetch and save EZ Sked data for a list of people'
    
    def handle(self, *args, **options):

        ## Edit these as required
        date = '2024-1-27'
        sna = SNA.objects.filter(name="Gray")[0]           
        sim =  {
                "type": "simulator",
                "brief_time":1930,
                "takeoff_time": 2000,
                "box_no": "812",
                "crew_1": "CIV DOHERTY",
                "crew_2": "LTJG DOMLER",
                "event": "IR3490",
                "remark": None
            }

        flight = {

            "type": "flight",
            "line_no": 942,
            "brief_time": 1000,
            "takeoff_time": 1145,
            "land_time": 1315,
            "crew_1": "CAPT ASHLOCK",
            "crew_2": "1stLt KENT",
            "event": "IR4105",
            "flight_time": "1.5",
            "remark": None

        }

        duty = {
            "type": "duty",
            "duty": "DUTY DRIVER (ON CALL)",
            "crew": "LTJG GRAY",
            "sign_in": 700,
            "sign_out": 1700
        }

        



        existing_events = EzSkedEvent.objects.filter(date=date, sna=sna)
        # if existing_events:
        #     print(f"event {existing_events} already exists")

        # else:
        event = create_duty_event(sna, duty, date)
        event.save()
        created_event = event
        print(f"Event created with id: {created_event.id}")




