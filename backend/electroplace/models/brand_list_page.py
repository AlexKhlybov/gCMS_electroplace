from garpix_page.models import BasePage

from .brand_page import BrandPage
from .category_page import ProductsCategoryPage
from .contact_page import ContactPage


class BrandListPage(BasePage):
    template = "pages/brands_list_page.html"

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        brands_list = BrandPage.objects.filter(is_active=True).all()
        from .catalog_page import CatalogPage

        context["catalog"] = CatalogPage.objects.all().first()
        context["page_obj"] = ProductsCategoryPage.get_paginate_by(request, brands_list, 6)
        context["contacts"] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Список брендов"
        verbose_name_plural = "Список брендов"
