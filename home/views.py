from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from datetime import datetime, timedelta
import pytz
from .scripts import *
from .models import *

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
                        
                        event_name = event_data["event"]
                        try:
                            end_time = localize_time_from_integer(event_data["land_time"])
                        except:
                            end_time = localize_time_from_integer(event_data["brief_time"]+200)
                        # Assuming sna is defined and available
                        event = EzSkedEvent(
                            date=today,
                            event_name=event_name,
                            sna=stud,
                            event_type=event_data["type"],
                            remarks=event_data["remark"],
                            brief_time=localize_time_from_integer(event_data["brief_time"]),
                            takeoff_time=localize_time_from_integer(event_data["takeoff_time"]),
                            land_time=end_time,  # You can set the land time as per your requirement
                            crew_1 = event_data['crew_1'],
                            crew_2 = event_data['crew_2']
                        )
                        event.save()
                todays_event=event

            context["sna_today_data"][stud.name] = todays_event
        
        for stud in context["studs"]:

            existing_events = EzSkedEvent.objects.filter(date=tomorrow, sna=stud)
            tomorrows_event=existing_events

            if not existing_events:
                json_data = get_ez_sked_data(stud.name,stud.rank, tomorrow)

                for line, event_data in json_data.items():
                        
                        event_name = event_data["event"]
                        try:
                            end_time = localize_time_from_integer(event_data["land_time"])
                        except:
                            end_time = localize_time_from_integer(event_data["brief_time"]+200)
                        # Assuming sna is defined and available
                        event = EzSkedEvent(
                            date=tomorrow,
                            event_name=event_name,
                            sna=stud,
                            event_type=event_data["type"],
                            remarks=event_data["remark"],
                            brief_time=localize_time_from_integer(event_data["brief_time"]),
                            takeoff_time=localize_time_from_integer(event_data["takeoff_time"]),
                            land_time=end_time,  # You can set the land time as per your requirement
                            crew_1 = event_data['crew_1'],
                            crew_2 = event_data['crew_2']
                        )
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
        return {}

    def get(self, request, *args, **kwargs):
            context = self.get_context_data(request, **kwargs)
            return render(request, self.template_name, context)

