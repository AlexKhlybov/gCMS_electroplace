from django.db import models
from garpix_page.models import BasePage


class ContactPage(BasePage):
    city = models.CharField(max_length=250, verbose_name="Город", blank=True, default="", null=False)
    address = models.CharField(max_length=250, verbose_name="Адрес", blank=True, default="", null=False)
    phone = models.CharField(max_length=30, verbose_name="Номер телефона", blank=True, default="", null=False)
    email = models.CharField(max_length=100, verbose_name="E-mail", blank=True, default="", null=False)
    tabletime = models.CharField(max_length=100, verbose_name="Часы работы", blank=True, default="", null=False)

    template = "pages/contact_page.html"

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        from .catalog_page import CatalogPage

        context["catalog"] = CatalogPage.objects.all().first()
        context["contacts"] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Контакт"
        verbose_name_plural = "Контакты"
        ordering = ("-created_at",)
