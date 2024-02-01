import requests
from bs4 import BeautifulSoup

PILOTWEB_BASE_URL = 'https://pilotweb.nas.faa.gov/PilotWeb'

def parse(html):
    soup = BeautifulSoup(html, 'html.parser')
    results_elements = soup.find_all('div', {'id': 'resultsHomeLeft'})

    if not results_elements:
        print('Unable to parse the #resultsTitleLeft page element')
        return None

    return [extract_notams(el.find('div', {'id': 'resultsTitleLeft'})) for el in results_elements]
    
def fetch_notams(icaos, options={}):
    return fetch_notams_by_icao(icaos, options)

def fetch_notams_by_icao(icaos, options={}):
    format_type = options.get('format', 'ICAO')

    if isinstance(icaos, list):
        icaos = ','.join(icaos)

    params = {
        'reportType': 'RAW',
        'method': 'displayByICAOs',
        'actionType': 'notamRetrievalByICAOs',
        'retrieveLocId': icaos,
        'formatType': format_type
    }

    response = requests.get(f'{PILOTWEB_BASE_URL}/notamRetrievalByICAOAction.do', params=params)
    return parse(response.text)

def fetch_all_by_type(type, format='ICAO'):
    return fetch_all(type, format)

def fetch_all(options={}):
    tfrs = fetch_all_by_type('ALLTFR', options.get('format'))
    gps = fetch_all_by_type('ALLGPS', options.get('format'))
    carfs = fetch_all_by_type('ALLCARF', options.get('format'))
    special_notices = fetch_all_by_type('ALLSPECIALNOTICES', options.get('format'))

    index = {}
    for notams_list in [tfrs, gps, carfs, special_notices]:
        for notam in notams_list:
            if notam['icao'] not in index:
                index[notam['icao']] = []
            index[notam['icao']].extend(notam['notams'])

    return [{'icao': icao, 'notams': index[icao]} for icao in index]

def fetch_all_by_type(query_type, format_type):
    response = requests.get(f'{PILOTWEB_BASE_URL}/noticesAction.do', params={
        'reportType': 'RAW',
        'queryType': query_type,
        'formatType': format_type
    })

    parsed = parse(response.text)

    return [{'icao': r['icao'], 'notams': [{'text': n, 'type': {'ALLTFR': 'TFR', 'ALLGPS': 'GPS', 'ALLCARF': 'CARF', 'ALLSPECIALNOTICES': 'Special Notice'}[query_type]} for n in r['notams']]} for r in parsed]

def extract_notams(element):
    icao = element.find('a')['name']
    next_element = element.parent.find_next()

    notams = []
    while True:
        title_text = next_element.find('div', {'id': 'resultsTitleLeft'})
        summary_text = next_element.find('div', {'id': 'alertFont'})
        
        if title_text or summary_text:
            break

        notam_text = next_element.find('pre')
        if notam_text and notam_text.text.strip():
            notams.append(notam_text.text.strip())

        next_element = next_element.find_next()

    return {'icao': icao, 'notams': notams}



# # Example usage:
# icaos = ['PADK', 'PADU']
# options = {'format': 'ICAO'}
# result = fetch_notams(icaos, options)
# print(result)
