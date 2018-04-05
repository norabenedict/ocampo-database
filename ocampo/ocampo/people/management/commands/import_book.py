# These imports are Python modules that are used to carry out the import
import csv

from django.core.management.base import BaseCommand

# EDIT ME: with an import of myapp.models and model name
# where your model name goes, camel-cased precisely as it is in myapp/models.py
# so if your app was plinyletters and the model was Letter,
# the import would be: from plinyletters.models import Letter
from ocampo.people.models import Book

from ocampo.people.models import People

from ocampo.people.models import Occupation

def map_csv(csvfile, headers=True):
    """
    This function does the actual work of importing the CSV and mapping it to a
    model.
    You will need to customize this to make it do anything useful.
    You should map header names from your CSV to fields on your model.
    Foreign key associations need to be created manually via Django's
    ORM syntax. When you're ready to add that portion, speak to a member of the
    CDH dev team, but we've given you an example to get you started using an
    association of Person with a single Address.
    """
    # Create an empty model instance of your model above
    # EDIT ME: Use your model's name

    reader = csv.DictReader(csvfile)

    for row in reader:
        # - EDIT ME
        # where 'last_name' and 'first_name' are column headings in your CSV
        book = Book()
        book.title = row['Title']
        book.date = row['Date'] if row['Date'] else None
        book.price = row['Price'] if row['Price'] else None
        book.printer = row['Printer'] if row['Printer'] else None
        book.colophon = row['Colophon'] if row['Colophon'] else None
        book.notes = row['Notes'] if row['Notes'] else None

        book.save()

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

        # open the file using a with statement, so that the program
        # closes the file cleanly. This is standard python practice.
        with open(options['path'], 'r') as csvfile:
            map_csv(csvfile)
