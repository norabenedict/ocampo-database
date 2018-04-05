
# These imports are Python modules that are used to carry out the import
import csv

from django.core.management.base import BaseCommand

from ocampo.people.models import CreatorContribution

from ocampo.people.models import People, Contribution

def map_csv(csvfile, headers=True):


    reader = csv.DictReader(csvfile)

    for row in reader:
        creatorcontribution = CreatorContribution()
        creatorcontribution.creator_role = row['Creator_role']
        creatorcontribution.notes = row['Notes']

        person, created = People.objects.get_or_create(name=row['Person'])

        creatorcontribution.person = person

        contribution, created = Contribution.objects.get_or_create(title=row['Contribution'])

        creatorcontribution.contribution = contribution

        creatorcontribution.save()

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
