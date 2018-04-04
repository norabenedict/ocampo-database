# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-03-21 15:08
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0003_eliminated_descriptive_bibliography__table'),
    ]

    operations = [
        migrations.AlterField(
            model_name='creatorbook',
            name='creator_role',
            field=models.CharField(choices=[('AU', 'Author'), ('TR', 'Translator'), ('AR', 'Artist'), ('PR', 'Prologuist')], default='AU', max_length=2),
        ),
        migrations.AlterField(
            model_name='occupation',
            name='occupation_type',
            field=models.CharField(choices=[('WR', 'Writer'), ('PR', '(Literary) Producer'), ('AR', 'Artist'), ('AT', 'Activist'), ('AC', 'Academics')], default='WR', max_length=2),
        ),
    ]
