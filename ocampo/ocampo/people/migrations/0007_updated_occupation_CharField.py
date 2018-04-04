# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-03-21 15:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0006_updated_occupation_types_model'),
    ]

    operations = [
        migrations.AlterField(
            model_name='occupation',
            name='occupation_type',
            field=models.CharField(choices=[('WR', 'Writer'), ('PR', 'Producer'), ('AR', 'Artist'), ('AT', 'Activist'), ('AC', 'Academic')], default='WR', max_length=8),
        ),
    ]
