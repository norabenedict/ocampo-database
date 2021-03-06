# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-03-27 12:51
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0010_updated_issues_model'),
    ]

    operations = [
        migrations.AlterField(
            model_name='issue',
            name='arrow_color',
            field=models.CharField(blank=True, max_length=30, null=True),
        ),
        migrations.AlterField(
            model_name='issue',
            name='cover_color',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='issue',
            name='price',
            field=models.CharField(blank=True, max_length=10, null=True),
        ),
    ]
