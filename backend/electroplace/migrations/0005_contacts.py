# Generated by Django 3.1 on 2021-08-02 06:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [("electroplace", "0004_brandspage_productpage_productscategory")]

    operations = [
        migrations.CreateModel(
            name="Contacts",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                ("city", models.CharField(blank=True, default="", max_length=250, verbose_name="Город")),
                ("address", models.CharField(blank=True, default="", max_length=250, verbose_name="Адрес")),
                ("phone", models.CharField(blank=True, default="", max_length=30, verbose_name="Номер телефона")),
                ("email", models.CharField(blank=True, default="", max_length=100, verbose_name="E-mail")),
                ("tabletime", models.CharField(blank=True, default="", max_length=100, verbose_name="Часы работы")),
            ],
            options={"verbose_name": "Контакт", "verbose_name_plural": "Контакты"},
        )
    ]
