from django.db import models
from django.shortcuts import get_object_or_404

from garpix_page.models import BasePage
from .contact_page import ContactPage


class BrandsPage(BasePage):
    name = models.CharField(verbose_name="Название", max_length=32, unique=True)
    desc_brands = models.TextField(verbose_name="Описание", blank=True)
    image = models.ImageField(upload_to="Изображение", blank=True)

    template = 'pages/brands_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['contacts'] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Бренд"
        verbose_name_plural = "Бренды"

    def __str__(self):
        return self.name

    @staticmethod
    def get_item(pk):
        return get_object_or_404(BrandsPage, pk=pk)

    def delete(self):
        self.is_active = False
        self.save()
