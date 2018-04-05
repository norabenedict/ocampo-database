
# These imports are Python modules that are used to carry out the import
import csv

from django.core.management.base import BaseCommand

from ocampo.people.models import CreatorBook

from ocampo.people.models import People, Occupation, Book

def map_csv(csvfile, headers=True):


    reader = csv.DictReader(csvfile)

    for row in reader:
        creatorbook = CreatorBook()
        creatorbook.notes = row['Notes']

        print(row['People'])
        person = People.objects.get(name=row['People'])

        creatorbook.person = person

        creator_role = Occupation.objects.get(name=row['Creator_role'])

        creatorbook.creator_role = creator_role

        book = Book.objects.get(title=row['Title'])

        creatorbook.book = book

        creatorbook.save()

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
