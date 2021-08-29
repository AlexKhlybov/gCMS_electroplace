# Generated by Django 3.1 on 2021-08-09 19:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("electroplace", "0011_delete_promopage"),
    ]

    operations = [
        migrations.CreateModel(
            name="SiteConfiguration",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                (
                    "facebook",
                    models.CharField(
                        blank=True,
                        default="https://www.facebook.com/",
                        max_length=256,
                        verbose_name="Страница Facebook",
                    ),
                ),
                (
                    "instagram",
                    models.CharField(
                        blank=True,
                        default="https://www.instagram.com/",
                        max_length=256,
                        verbose_name="Страница Instagram",
                    ),
                ),
                (
                    "vkontakte",
                    models.CharField(blank=True, default="https://vk.com/", max_length=256, verbose_name="Страница VK"),
                ),
                (
                    "youtube",
                    models.CharField(
                        blank=True, default="https://www.youtube.com/", max_length=256, verbose_name="Страница Youtube"
                    ),
                ),
                (
                    "footer_copyright",
                    models.CharField(
                        blank=True, default="© Electro place, 2003–2021", max_length=256, verbose_name="Футер копирайт"
                    ),
                ),
            ],
            options={
                "verbose_name": "Настройки сайта",
            },
        ),
    ]
