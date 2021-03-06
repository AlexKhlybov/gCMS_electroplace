# Generated by Django 3.1 on 2021-08-02 11:05

import django.db.models.deletion
import django.utils.timezone
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("garpix_page", "0001_initial"),
        ("garpix_menu", "0002_auto_20210730_0021"),
        ("electroplace", "0005_contacts"),
    ]

    operations = [
        migrations.CreateModel(
            name="Benefits",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                ("title", models.CharField(max_length=128, verbose_name="Заголовок")),
                ("desc", models.TextField(blank=True, verbose_name="Текст")),
            ],
            options={"verbose_name": "Преимущество", "verbose_name_plural": "Преимущества"},
        ),
        migrations.CreateModel(
            name="Brands",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                ("name", models.CharField(max_length=32, unique=True, verbose_name="Название")),
                ("desc_brands", models.TextField(blank=True, verbose_name="Описание")),
                ("image", models.ImageField(blank=True, upload_to="Изображение")),
            ],
            options={"verbose_name": "Бренд", "verbose_name_plural": "Бранды"},
        ),
        migrations.CreateModel(
            name="PromoSlider",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                ("name", models.CharField(max_length=256, verbose_name="Название")),
                ("sort_desc", models.CharField(max_length=256, verbose_name="Короткое описание")),
                ("image", models.ImageField(blank=True, upload_to="Изображение")),
                ("is_active", models.BooleanField(db_index=True, default=True, verbose_name="Активный")),
                (
                    "public_date",
                    models.DateTimeField(default=django.utils.timezone.now, verbose_name="Дата публикации"),
                ),
                ("updated_at", models.DateTimeField(auto_now=True, verbose_name="Обновлено")),
                ("brand", models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="electroplace.brands")),
            ],
            options={"verbose_name": "Слайдер", "verbose_name_plural": "Слайдер"},
        ),
        migrations.RemoveField(model_name="brandspage", name="basepage_ptr"),
        migrations.DeleteModel(name="Contacts"),
        migrations.AlterField(
            model_name="productpage",
            name="brands",
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="electroplace.brands"),
        ),
        migrations.DeleteModel(name="BrandsPage"),
    ]
