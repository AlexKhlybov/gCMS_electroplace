# Generated by Django 3.1 on 2021-07-29 22:01

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [("garpix_page", "0001_initial")]

    operations = [
        migrations.CreateModel(
            name="HomePage",
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
                ),
                ("city", models.CharField(blank=True, default="", max_length=250, verbose_name="Город")),
                ("address", models.CharField(blank=True, default="", max_length=250, verbose_name="Адрес")),
                (
                    "address_ru",
                    models.CharField(blank=True, default="", max_length=250, null=True, verbose_name="Адрес"),
                ),
                ("phone", models.CharField(blank=True, default="", max_length=30, verbose_name="Номер телефона")),
                ("email", models.CharField(blank=True, default="", max_length=100, verbose_name="E-mail")),
                ("tabletime", models.CharField(blank=True, default="", max_length=100, verbose_name="Часы работы")),
            ],
            options={"verbose_name": "Главная", "verbose_name_plural": "Главная", "ordering": ("-created_at",)},
            bases=("garpix_page.basepage",),
        )
    ]
