import requests
import json
from datetime import datetime, timedelta
from tfr_scraper import tfr_scraper
from .fetchNotams import *
from .models import *

import pytz
from datetime import datetime, time, timedelta

def localize_time_from_integer(input_integer, timezone_name='America/Chicago'):
    # Use 'America/Chicago' as the default timezone
    desired_time_zone = pytz.timezone(timezone_name)

    # Convert the arbitrary integer to a time object
    input_hour = input_integer // 100  # Extract the hour from the integer
    input_minute = input_integer % 100  # Extract the minute from the integer
    input_time = time(input_hour, input_minute)  # Create a time object

    # Create a datetime object by combining the time with a dummy date
    dummy_date = datetime.now().date()  # Use today's date as a dummy date
    input_datetime = datetime.combine(dummy_date, input_time)

    # Localize the datetime to the desired time zone
    localized_datetime = desired_time_zone.localize(input_datetime, is_dst=None)

    # Extract the time component from the localized datetime
    localized_time = localized_datetime.time()

    return localized_time.strftime('%H:%M')  # Return the localized time in 24-hour format


def get_sunrise_sunset(lat, lng):
    base_url = "https://api.sunrisesunset.io/json"
    params = {
        'lat': lat,
        'lng': lng,
        'formatted': 0  # Use 0 for raw Unix timestamps
    }

    response = requests.get(base_url, params=params)
    data = response.json()


    if response.status_code == 200:
        sunrise_cst = data['results']['sunrise']
        sunset_cst = data['results']['sunset']

        return {
            'sunrise_cst': sunrise_cst,
            'sunset_cst': sunset_cst
        }
    else:
        return None

def get_ez_sked_data(name, rank, date):
    url = "https://ezsked.co/api/retrieve_line/"
    headers = {
        "Authorization": "Token 8128e5ef3b89f5f125a7639baa62b97940da4f01",
        "Content-Type": "application/json"
    }

    data = {
        "target_name": name,
        "target_rank": rank,
        "date": date,
        "squadron": "9"
    }
    
    try:
        response = requests.post(url, headers=headers, data=json.dumps(data))
        response.raise_for_status()  # This will raise an HTTPError for 4xx or 5xx status codes
        resp = response.json()
        return resp
    except requests.exceptions.HTTPError as err:
        # Handle the 500 error here
        print(f"HTTP error occurred: {err}")
        # You can raise a custom exception, log the error, or return a specific response
        return None

def get_metar_data(airport, date_zulu_time):

    url = "https://aviationweather.gov/api/data/metar"
    params = {
        "ids": airport,
        "format":"json",
        "date":date_zulu_time,
    }
    response = requests.get(url,params=params)
    if response.status_code == 200 and len(response.json())>0:
        data = response.json()
        return data[0]
    else:
        print(f"Request failed with status code: {response.status_code}")
        print(response.text)
        return None

def get_taf_data(airport, date_zulu_time):
    url = "https://aviationweather.gov/api/data/taf"
    params = {
            "ids": airport,
            "format":"json",
            "date":date_zulu_time,
        }
    response = requests.get(url,params=params)
    if response.status_code == 200 and len(response.json())>0:
        data = response.json()
        return data[0]
    else:
        print(f"Request failed with status code: {response.status_code}")
        print(response.text)
        return None

def get_notam_data(airports):
    data = fetch_notams_by_icao("KMEI")
    return data

def get_tfr_data():
    data = tfr_scraper.get_list_and_parse_all()
    return data

    #Downloads TFR list and parses all combines details with list and returns it. 


def post_ahas_form(airport, date, time):
    # THIS IS GOING TO BE SOMEWHAT HARD- GOING TO NEED BS
    # URL of the website with the form
    url = 'https://www.usahas.com'

    # Fetch the HTML content of the page
    # Form data to submit
    form_data = {
        'area': 'MERIDIAN NAS',
        '1stMonth': 'Jan',
        '1stDay':"23",
        '1stHour':'1200',
        "AHAS RISK button":"AHAS RISK"
        # Add other form fields and their values
    }

    # Submit the form
    response = requests.post(url, data=form_data)

    # Check if the request was successful (status code 200)
    if response.status_code == 200:
        # Parse the HTML content
        # soup = BeautifulSoup(response.text, 'html.parser')
        pass


def create_duty_event(sna, data, date):
    event = EzSkedEvent(
                date=date,
                event_name=data["duty"],
                sna=sna,
                event_type=data["type"],
                remarks=None,
                brief_time=localize_time_from_integer(data["sign_in"]),
                takeoff_time=None,
                land_time=localize_time_from_integer(data["sign_out"]),  # You can set the land time as per your requirement
                crew_1 = data['crew'],
                crew_2 = None
            )
    return event

def create_flight_event(sna, data, date):
    event = EzSkedEvent(
                                date=date,
                                event_name=data['event'],
                                sna=sna,
                                event_type=data["type"],
                                remarks=data["remark"],
                                brief_time=localize_time_from_integer(data["brief_time"]),
                                takeoff_time=localize_time_from_integer(data["takeoff_time"]),
                                land_time=localize_time_from_integer(data["land_time"]),  # You can set the land time as per your requirement
                                crew_1 = data['crew_1'],
                                crew_2 = data['crew_2']
                            )
    return event

def create_sim_event(sna, data, date):
    event = EzSkedEvent(
                date=date,
                event_name=data["event"],
                sna=sna,
                event_type=data["type"],
                remarks=data["remark"],
                brief_time=localize_time_from_integer(data["brief_time"]),
                takeoff_time=localize_time_from_integer(data["takeoff_time"]),
                land_time=localize_time_from_integer(data["brief_time"]+200),  # You can set the land time as per your requirement
                crew_1 = data['crew_1'],
                crew_2 = data['crew_2']
            )
    return event