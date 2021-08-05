from django.db import models

from garpix_page.models import BasePage


class ProductsCategoryPage(BasePage):
    name = models.CharField(verbose_name="Категория", max_length=32, unique=True)
    desc_category = models.TextField(verbose_name="Описание", blank=True)

    template = 'pages/category_page.html'

    class Meta:
        verbose_name = "Категория"
        verbose_name_plural = "Категории"

    def __str__(self):
        return self.name
        