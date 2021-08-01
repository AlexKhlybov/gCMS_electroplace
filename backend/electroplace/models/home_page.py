from garpix_page.models import BasePage
from django.db import models

from .contact_page import ContactPage


class HomePage(BasePage):
    template = 'pages/home_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['address'] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Главная"
        verbose_name_plural = "Главная"
        ordering = ('-created_at',)