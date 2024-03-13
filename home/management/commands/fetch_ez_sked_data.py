# yourapp/management/commands/fetch_ez_sked_data.py
import json
from django.core.management.base import BaseCommand
from home.scripts import get_ez_sked_data
from datetime import datetime, timedelta


class Command(BaseCommand):
    help = 'Fetch and save EZ Sked data for a list of people'

    def handle(self, *args, **options):
        save_interval = 7  # Save data every 7 days

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

        data_dict = {}


        start_date = datetime(2024, 3, 7)
        end_date = datetime.now()


        current_date = start_date
        # time.sleep(5 + (5 * random.random()))


        while current_date <= end_date:
            for person in people_list:
                rank = person["rank"]
                name = person["name"]
                date = current_date.strftime("%Y-%m-%d")

                # Call the API function
                api_response = get_ez_sked_data(name, rank, date)

                if api_response:
                    if date not in data_dict:
                        data_dict[date] = {}
                    data_dict[date][name] = api_response

                # Add more lines as needed

            # Save data to JSON file every save_interval days
            if (current_date - start_date).days % save_interval == 0:
                self.save_data(data_dict)
                self.stdout.write(self.style.SUCCESS(f'Successfully saved week of date:{current_date} to JSON'))

            # Move to the next day
            current_date += timedelta(days=1)

        # Save remaining data at the end
        self.save_data(data_dict)

        self.stdout.write(self.style.SUCCESS('Successfully saved data to JSON'))

    def save_data(self, data_list):
        with open('ez_sked_data.json', 'w') as json_file:
            json.dump(data_list, json_file, indent=2)