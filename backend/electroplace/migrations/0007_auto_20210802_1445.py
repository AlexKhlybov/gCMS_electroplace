# Generated by Django 3.1 on 2021-08-02 11:45

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("garpix_page", "0001_initial"),
        ("sites", "0002_alter_domain_unique"),
        ("garpix_menu", "0002_auto_20210730_0021"),
        ("contenttypes", "0002_remove_content_type_name"),
        ("electroplace", "0006_auto_20210802_1405"),
    ]

    operations = [
        migrations.CreateModel(
            name="BrandsPage",
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
                ("name", models.CharField(max_length=32, unique=True, verbose_name="Название")),
                ("desc_brands", models.TextField(blank=True, verbose_name="Описание")),
                ("image", models.ImageField(blank=True, upload_to="Изображение")),
            ],
            options={"verbose_name": "Бренд", "verbose_name_plural": "Бранды"},
            bases=("garpix_page.basepage",),
        ),
        migrations.CreateModel(
            name="NewsListPage",
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
            options={"verbose_name": "Список новостей", "verbose_name_plural": "Список новостей"},
            bases=("garpix_page.basepage",),
        ),
        migrations.CreateModel(
            name="NewsPage",
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
                ("title_news", models.CharField(max_length=128, verbose_name="Заголовок")),
                ("subtitle", models.CharField(max_length=128, verbose_name="Подзаголовок")),
                ("text", models.TextField(blank=True, verbose_name="Текст")),
                ("image", models.ImageField(blank=True, upload_to="Изображение")),
            ],
            options={"verbose_name": "Новость", "verbose_name_plural": "Новости", "ordering": ("-created_at",)},
            bases=("garpix_page.basepage",),
        ),
        migrations.RenameModel(old_name="ProductsCategory", new_name="ProductsCategoryPage"),
        migrations.AlterField(
            model_name="productpage",
            name="brands",
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="electroplace.brandspage"),
        ),
        migrations.AlterField(
            model_name="promoslider",
            name="brand",
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="electroplace.brandspage"),
        ),
        migrations.DeleteModel(name="Brands"),
    ]
