import requests
import json
from datetime import datetime, timedelta

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
    
    response = requests.post(url, headers=headers, data=json.dumps(data))
    resp = response.json()

    return resp 

def get_metar_data(airport, date_zulu_time):

    url = "https://aviationweather.gov/api/data/metar"
    params = {
        "ids": airport,
        "format":"json",
        "date":date_zulu_time,
    }
    response = requests.get(url,params=params)
    if response.status_code == 200:
        data = response.json()
        return data
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
    if response.status_code == 200:
        data = response.json()
        return data
    else:
        print(f"Request failed with status code: {response.status_code}")
        print(response.text)
        return None

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

