# Generated by Django 3.2.7 on 2021-10-07 12:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0011_remove_watchlist_number_rating'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='watchlist',
            name='avg_rating',
        ),
    ]
