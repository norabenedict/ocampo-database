# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-03-30 12:57
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0012_make_people_occupations_m2m'),
    ]

    operations = [
        migrations.AddField(
            model_name='contribution',
            name='contribution_type_choice',
            field=models.CharField(choices=[('ES', 'Essay'), ('PO', 'Poetry'), ('LE', 'Letter'), ('RE', 'Review'), ('IL', 'Illustration'), ('FI', 'Fiction'), ('AN', 'Announcement'), ('TH', 'Theater'), ('OT', 'Other')], default='ES', max_length=2),
        ),
        migrations.AlterField(
            model_name='contribution',
            name='contribution_type',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
    ]
