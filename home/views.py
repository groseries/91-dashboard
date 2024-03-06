from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from datetime import datetime, timedelta
from .scripts import *
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

class DetTracker(View):
    template_name = "det_dash.html"


    def get_context_data(self, request, **kwargs):
        context={}
        people_list = [
            {"rank": "LTJG", "name": "Asher"},
            {"rank": "LTJG", "name": "Domler"},
            {"rank": "LTJG", "name": "Figueroa"},
            {"rank": "LTJG", "name": "Gray"},
            {"rank": "1stLt", "name": "Kent"},
            {"rank": "LTJG", "name": "Markert"},
            {"rank": "1stLt", "name": "Meier"},
            {"rank": "1stLt", "name": "Rodts"},
            {"rank": "1stLt", "name": "Roser"},
            {"rank": "Capt", "name": "Ross"},
            {"rank": "LTJG", "name": "Seepe"},
            {"rank": "LTJG", "name": "Winkler"},
        ]
        context["studs"]=people_list
        context['sna_today_data']={}
        today = datetime.now().strftime("%Y-%m-%d")

        for stud in context["studs"]:
            json_data = get_ez_sked_data(stud['name'],stud['rank'], today)
            today_data= []
            for key, val in json_data.items():
                today_data.append(val)

            context["sna_today_data"][stud['name']] = today_data
        
        
        return context

    def get(self, request, *args, **kwargs):
        context = self.get_context_data(request, **kwargs)
        return render(request, self.template_name, context)