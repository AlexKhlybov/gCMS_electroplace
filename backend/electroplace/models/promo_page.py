from django.db import models

from garpix_page.models import BasePage
from .contact_page import ContactPage


class ProductsCategoryPage(BasePage):
    name = models.CharField(verbose_name="Категория", max_length=32, unique=True)
    desc_category = models.TextField(verbose_name="Описание", blank=True)

    template = 'pages/category_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['contacts'] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Категория"
        verbose_name_plural = "Категории"

    def __str__(self):
        return self.name
        