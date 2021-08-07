# Generated by Django 3.1 on 2021-08-07 08:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('contenttypes', '0002_remove_content_type_name'),
        ('garpix_page', '0001_initial'),
        ('sites', '0002_alter_domain_unique'),
        ('garpix_menu', '0002_auto_20210730_0021'),
        ('electroplace', '0008_auto_20210806_2134'),
    ]

    operations = [
        migrations.CreateModel(
            name='BrandListPage',
            fields=[
                ('basepage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='garpix_page.basepage')),
            ],
            options={
                'verbose_name': 'Список брендов',
                'verbose_name_plural': 'Список брендов',
            },
            bases=('garpix_page.basepage',),
        ),
        migrations.RenameModel(
            old_name='BrandsPage',
            new_name='BrandPage',
        ),
        migrations.RenameField(
            model_name='productpage',
            old_name='brands',
            new_name='brand',
        ),
    ]
