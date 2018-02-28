# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Book(models.Model):
    title = models.CharField(max_length=200, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    price = models.CharField(max_length=20, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    people = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True)
    occupations = models.ForeignKey('Occupation', models.DO_NOTHING, blank=True, null=True)
    descriptive_bibliography = models.ForeignKey('DescriptiveBibliography', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'books'


class ContributionRolePersonContribution(models.Model):
    contributions = models.ForeignKey('Contribution', models.DO_NOTHING, blank=True, null=True)
    contribution_role_type = models.ForeignKey('ContributionRoleType', models.DO_NOTHING, blank=True, null=True)
    people = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'contribution_role_person_contribution'


class ContributionRoleType(models.Model):
    contribution_role_type_name = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'contribution_role_type'


class Contribution(models.Model):
    issues = models.ForeignKey('Issue', models.DO_NOTHING, blank=True, null=True)
    people = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True)
    title = models.CharField(max_length=250, blank=True, null=True)
    start_page = models.CharField(max_length=10, blank=True, null=True)
    end_page = models.CharField(max_length=10, blank=True, null=True)
    page_total = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    contribution_type = models.CharField(max_length=150, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'contribution'


class Correspondence(models.Model):
    #sender = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    #location_sent = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    descriptive_bibliography = models.ForeignKey('DescriptiveBibliography', models.DO_NOTHING, blank=True, null=True)
    #recipient = models.ForeignKey('People', models.DO_NOTHING, blank=True, null=True)
    #location_received = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'correspondence'


class DescriptiveBibliography(models.Model):
    paper = models.TextField(blank=True, null=True)
    binding = models.TextField(blank=True, null=True)
    typography = models.TextField(blank=True, null=True)
    colophon = models.TextField(blank=True, null=True)
    repository = models.ForeignKey('Repository', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'descriptive_bibliography'


class Event(models.Model):
    date = models.DateField(blank=True, null=True)
    title = models.CharField(max_length=250, blank=True, null=True)
    place = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'event'


class Issue(models.Model):
    periodicals = models.ForeignKey('Periodicals', models.DO_NOTHING, blank=True, null=True)
    number = models.CharField(max_length=10, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    printer = models.CharField(max_length=20, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'issues'


class Occupation(models.Model):
    name = models.CharField(max_length=150, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    occupation_type = models.CharField(max_length=150, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'occupations'


class People(models.Model):
    name = models.CharField(max_length=80, blank=True, null=True)
    #birthdate = models.DateField(blank=True, null=True)
    #birthplace = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True)
    #deathdate = models.DateField(blank=True, null=True)
    #deathplace = models.ForeignKey('Place', models.DO_NOTHING, blank=True, null=True)
    occupations = models.ForeignKey(Occupation, models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    sex = models.CharField(max_length=20, blank=True, null=True)
    viaf_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'people'

    def __str__(self):
        return self.name	

class Periodicals(models.Model):
    title = models.CharField(max_length=15, blank=True, null=True)
    repository = models.ForeignKey('Repository', models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    descriptive_bibliography = models.ForeignKey(DescriptiveBibliography, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'periodicals'


class Place(models.Model):
    latitude = models.FloatField(blank=True, null=True)
    longitude = models.FloatField(blank=True, null=True)
    name = models.CharField(max_length=250, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'place'


class Repository(models.Model):
    name = models.CharField(max_length=150, blank=True, null=True)
    place = models.ForeignKey(Place, models.DO_NOTHING, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'repository'
