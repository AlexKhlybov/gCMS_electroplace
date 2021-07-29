from garpix_page.models import BasePage
from django.db import models


class HomePage(BasePage):
    city = models.CharField(max_length=250, verbose_name='Город', blank=True, default='', null=False)
    address = models.CharField(max_length=250, verbose_name='Адрес', blank=True, default='', null=False)
    phone = models.CharField(max_length=30, verbose_name='Номер телефона', blank=True, default='', null=False)
    email = models.CharField(max_length=100, verbose_name='E-mail', blank=True, default='', null=False)
    tabletime = models.CharField(max_length=100, verbose_name='Часы работы', blank=True, default='', null=False)

    template = 'index.html'

    class Meta:
        verbose_name = "Главная"
        verbose_name_plural = "Главная"
        ordering = ('-created_at',)