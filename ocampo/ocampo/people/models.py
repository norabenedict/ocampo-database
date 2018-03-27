# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models

class Book(models.Model):
    title = models.CharField(max_length=200, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    price = models.CharField(max_length=20, blank=True, null=True)
    people = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True)
    occupations = models.ForeignKey('Occupation', models.DO_NOTHING, blank=True, null=True)
    paper = models.TextField(blank=True, null=True)
    binding = models.TextField(blank=True, null=True)
    typography = models.TextField(blank=True, null=True)
    colophon = models.TextField(blank=True, null=True)
    repository = models.ForeignKey('Repository', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'books'
        verbose_name= 'book'
        verbose_name_plural= 'books'

    def __str__(self):
        return self.title

class CreatorBook(models.Model):
    ROLE_CHOICES = (('AU', 'Author'), ('TR', 'Translator'), ('AR', 'Artist'), ('PR', 'Prologuist'))
    creator_role = models.CharField(max_length=2, choices=ROLE_CHOICES, default='AU')
    person = models.ForeignKey('People', models.DO_NOTHING)
    book = models.ForeignKey('Book', models.DO_NOTHING)
    notes = models.TextField(blank=True, null=True)

    def __str__(self):
         return '%s - %s - %s' % (self.person.name,
                                  self.get_creator_role_display(),
                                  self.book.title)
'''
class ContributionRolePersonContribution(models.Model):
    contributions = models.ForeignKey('Contribution', models.DO_NOTHING, blank=True, null=True)
    creator_role = models.ForeignKey('CreatorContribution', models.DO_NOTHING, blank=True, null=True)
    people = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'contribution_role_person_contribution'
        verbose_name = 'Contribution Type'
        verbose_name_plural = 'Contribution Types'
'''

class CreatorContribution(models.Model):
    ROLE_CHOICES = (('AU', 'Author'), ('TR', 'Translator'), ('AR', 'Artist'))
    creator_role = models.CharField(max_length=2, choices=ROLE_CHOICES, default='AU')
    person = models.ForeignKey('People', models.DO_NOTHING)
    contribution = models.ForeignKey('Contribution', models.DO_NOTHING)
    notes = models.TextField(blank=True, null=True)

    def __str__(self):
         return '%s - %s - %s' % (self.person.name,
                                  self.get_creator_role_display(),
                                  self.contribution.title)

class Contribution(models.Model):
    title = models.CharField(max_length=250, blank=True, null=True)
    issue = models.ForeignKey('Issue', models.DO_NOTHING, blank=True, null=True)
    start_page = models.CharField(max_length=10, blank=True, null=True)
    end_page = models.CharField(max_length=10, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    TYPE_CHOICES = (('ES', 'Essay'), ('PO', 'Poetry'), ('LE', 'Letter'), ('BR', 'Book Review'), ('IL', 'Illustration'), ('FI', 'Fiction'), ('AN', 'Announcement'), ('OT', 'Other'))
    contribution_type = models.CharField(max_length=2, choices=TYPE_CHOICES, default='ES')

    class Meta:

        db_table = 'contributions'
        verbose_name = 'contribution'
        verbose_name_plural = 'contributions'

    def __str__(self):
        return self.title

class Correspondence(models.Model):
    sender = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True, related_name='correspondence_sent')
    date = models.DateField(blank=True, null=True)
    location_sent = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True, related_name='correspondence_sent_to')
    recipient = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True, related_name='correspondence_received')
    location_received = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True, related_name='correspondence_received_at')
    paper = models.TextField(blank=True, null=True)
    text = models.TextField(blank=True, null=True)
    repository = models.ForeignKey('Repository', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'correspondence'
        verbose_name = 'correspondence'
        verbose_name_plural = 'correspondence'

    def __str__(self):
        return '%s to %s on %s' % (self.sender.name, self.recipient.name, self.date.year)

class Event(models.Model):
    date = models.DateField(blank=True, null=True)
    title = models.CharField(max_length=250, blank=True, null=True)
    place = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'events'
        verbose_name = 'event'
        verbose_name_plural = 'events'

    def __str__(self):
        return '%s (%s)' % (self.title, self.date.year)

class Issue(models.Model):
    periodicals = models.ForeignKey('Periodicals', models.DO_NOTHING, blank=True, null=True)
    number = models.CharField(max_length=10, blank=True, null=True)
    year = models.CharField(max_length=10, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    printer = models.CharField(max_length=20, blank=True, null=True)
    cover_color = models.CharField(max_length=20, blank=True, null=True)
    arrow_color = models.CharField(max_length=30, blank=True, null=True)
    colophon = models.TextField(blank=True, null=True)
    price = models.CharField(max_length=10, blank=True, null=True)
    repository = models.ForeignKey('Repository', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'issues'
        verbose_name = 'issue'
        verbose_name_plural = 'issues'

    def __str__(self):
        return '%s . %s (%s)' % (self.year, self.number, self.date.year)

class Occupation(models.Model):
    TYPE_CHOICES = (('WR', 'Writer'), ('PR', 'Producer'), ('AR', 'Artist'), ('AT', 'Activist'), ('AC', 'Academic'), ('SO', 'Socialite'))
    occupation_type = models.CharField(max_length=2, choices=TYPE_CHOICES, default='WR')
    name = models.CharField(max_length=150, blank=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'occupations'
        verbose_name = 'occupation'
        verbose_name_plural = 'occupations'

    def __str__(self):
        return self.name

class People(models.Model):
    name = models.CharField(max_length=80, blank=True, null=True)
    birthdate = models.DateField(blank=True, null=True)
    birthplace = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True, related_name='people_born')
    deathdate = models.DateField(blank=True, null=True)
    deathplace = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True, related_name='people_died')
    occupations = models.ForeignKey(Occupation, models.DO_NOTHING, blank=True, null=True)
    #TODO: make this a many to many field
    notes = models.TextField(blank=True, null=True)
    sex = models.CharField(max_length=20, blank=True, null=True)
    viaf_id = models.IntegerField(blank=True, null=True)

    class Meta:

        db_table = 'people'
        verbose_name = 'people'
        verbose_name_plural = 'people'

    def __str__(self):
        return self.name

class Periodicals(models.Model):
    title = models.CharField(max_length=15, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'periodicals'
        verbose_name = 'periodical'
        verbose_name_plural = 'periodicals'

    def __str__(self):
        return self.title

class Place(models.Model):
    latitude = models.FloatField(blank=True, null=True)
    longitude = models.FloatField(blank=True, null=True)
    name = models.CharField(max_length=250, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'places'
        verbose_name = 'place'
        verbose_name_plural = 'places'

    def __str__(self):
        return self.name

class Repository(models.Model):
    name = models.CharField(max_length=150, blank=True, null=True)
    place = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:

        db_table = 'repository'
        verbose_name = 'repository'
        verbose_name_plural = 'repositories'

    def __str__(self):
        return self.name
