# Generated by Django 3.1 on 2021-08-06 18:34

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [("electroplace", "0007_auto_20210802_1445")]

    operations = [
        migrations.AlterModelOptions(
            name="brandspage", options={"verbose_name": "Бренд", "verbose_name_plural": "Бренды"}
        ),
        migrations.RemoveField(model_name="productpage", name="category"),
    ]
