# Generated by Django 2.2.12 on 2020-05-14 15:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('geoserver', '0003_auto_20200512_2218'),
    ]

    operations = [
        migrations.AddField(
            model_name='shipgeometries',
            name='height',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AddField(
            model_name='shipgeometries',
            name='width',
            field=models.IntegerField(blank=True, default=0),
        ),
    ]
