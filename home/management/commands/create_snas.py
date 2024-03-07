from home.models import SNA
from django.core.management.base import BaseCommand


class Command(BaseCommand):
    help = 'Fetch and save EZ Sked data for a list of people'

    def handle(self, *args, **options):
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

        for person in people_list:
                    # Check if the SNA already exists before creating
                    sna, created = SNA.objects.get_or_create(name=person["name"], rank=person["rank"])
                    if created:
                        self.stdout.write(self.style.SUCCESS(f'SNA {person["name"]} created successfully'))
                    else:
                        self.stdout.write(f'SNA {person["name"]} already exists')

        self.stdout.write(self.style.SUCCESS('SNAs creation process completed'))
