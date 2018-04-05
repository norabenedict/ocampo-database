
# These imports are Python modules that are used to carry out the import
import csv

from django.core.management.base import BaseCommand

from ocampo.people.models import Correspondence, People, Place, Repository

def map_csv(csvfile, headers=True):


    reader = csv.DictReader(csvfile)

    for row in reader:
        correspondence = Correspondence()
        correspondence.date_on_letter = row['Date_On_Letter'] if row['Date_On_Letter'] else None
        correspondence.date_on_envelope = row['Date_On_Envelope'] if row['Date_On_Envelope'] else None
        correspondence.paper = row['Paper']
        correspondence.text = row['Text']
        correspondence.notes = row['Notes']
        correspondence.mentions = row['Mentions']
        correspondence.pages = row['Pages']
        correspondence.notes = row['Notes']


        sender, created = People.objects.get_or_create(name=row['Sender'])

        correspondence.sender = sender

        location_sent, created = Place.objects.get_or_create(name=row['Location_sent'])

        correspondence.location_sent = location_sent

        recipient, created = People.objects.get_or_create(name=row['Recipient'])

        correspondence.recipient = recipient

        location_received, created = Place.objects.get_or_create(name=row['Location_received'])

        correspondence.location_received = location_received

        repository, created = Repository.objects.get_or_create(name=row['Repository'])

        correspondence.repository = repository

        correspondence.save()


class Command(BaseCommand):

    def add_arguments(self, parser):
        # we add one argument, the path to the CSV to import
        # this should need no customization
        parser.add_argument('path', type=str)

    def handle(self, *args, **options):
        """
        Handle is the default function called by the Command, and will always
        be executed.
        You will need to custom one setting for your CSV, depending on whether
        or not it has headers.
        """

        with open(options['path'], 'r') as csvfile:
            map_csv(csvfile)
