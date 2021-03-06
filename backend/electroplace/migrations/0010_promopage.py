# Generated by Django 3.1 on 2021-08-07 19:35

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [("garpix_page", "0001_initial"), ("electroplace", "0009_auto_20210807_1136")]

    operations = [
        migrations.CreateModel(
            name="PromoPage",
            fields=[
                (
                    "basepage_ptr",
                    models.OneToOneField(
                        auto_created=True,
                        on_delete=django.db.models.deletion.CASCADE,
                        parent_link=True,
                        primary_key=True,
                        serialize=False,
                        to="garpix_page.basepage",
                    ),
                )
            ],
            options={"verbose_name": "Распродажа", "verbose_name_plural": "Распродажа"},
            bases=("garpix_page.basepage",),
        )
    ]
