from garpix_page.models import BasePage
from django.db import models


class ContactPage(BasePage):
    city = models.CharField(max_length=250, verbose_name='Город', blank=True, default='', null=False)
    address = models.CharField(max_length=250, verbose_name='Адрес', blank=True, default='', null=False)
    phone = models.CharField(max_length=30, verbose_name='Номер телефона', blank=True, default='', null=False)
    email = models.CharField(max_length=100, verbose_name='E-mail', blank=True, default='', null=False)
    tabletime = models.CharField(max_length=100, verbose_name='Часы работы', blank=True, default='', null=False)

    template = 'pages/contact_page.html'

    class Meta:
        verbose_name = "Контакт"
        verbose_name_plural = "Контакты"
        ordering = ('-created_at',)