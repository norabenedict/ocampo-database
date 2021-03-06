# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-04-05 15:51
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0020_auto_20180404_1754'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='book',
            name='people',
        ),
        migrations.AddField(
            model_name='book',
            name='people',
            field=models.ManyToManyField(through='people.CreatorBook', to='people.People'),
        ),
        migrations.AlterField(
            model_name='creatorbook',
            name='creator_role',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='people.Occupation'),
        ),
    ]
