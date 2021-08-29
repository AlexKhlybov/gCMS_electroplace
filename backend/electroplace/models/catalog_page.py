from garpix_page.models import BasePage

from .category_page import ProductsCategoryPage
from .contact_page import ContactPage
from .product_page import ProductPage


class CatalogPage(BasePage):
    template = "pages/catalog_page.html"

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        products_list = ProductPage.objects.filter(is_active=True).all()

        context["page_obj"] = ProductsCategoryPage.get_paginate_by(request, products_list, 6)
        context["contacts"] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Каталог"
        verbose_name_plural = "Каталог"
        ordering = ("-created_at",)
