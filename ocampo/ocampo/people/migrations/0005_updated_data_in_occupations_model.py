# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-03-21 15:10
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0004_updated_choice_options_in_occupations_model'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='occupation',
            name='occupation_type',
        ),
        migrations.AddField(
            model_name='occupation',
            name='occupation_role',
            field=models.CharField(choices=[('WR', 'Writer'), ('PR', 'Producer'), ('AR', 'Artist'), ('AT', 'Activist'), ('AC', 'Academic')], default='WR', max_length=2),
        ),
    ]