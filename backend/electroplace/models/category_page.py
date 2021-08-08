from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from django.db import models
from garpix_page.models import BasePage

from .contact_page import ContactPage
from .product_page import ProductPage


class ProductsCategoryPage(BasePage):
    name = models.CharField(verbose_name="Категория", max_length=32, unique=True)
    desc_category = models.TextField(verbose_name="Описание", blank=True)

    template = "pages/category_page.html"

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context["contacts"] = ContactPage.objects.all().first()
        if not kwargs["object"].name == "Скидки":
            product_list = ProductPage.on_site.filter(is_active=True, parent=kwargs["object"])
        else:
            product_list = ProductPage.objects.filter(is_active=True, is_stock=True).all()
        context["page_obj"] = self.get_paginate_by(request, product_list, 6)
        return context

    @staticmethod
    def get_paginate_by(request, obj_list, per_page):
        page = request.GET.get("page", 1)
        paginator = Paginator(obj_list, per_page)
        try:
            products = paginator.page(page)
        except PageNotAnInteger:
            products = paginator.page(1)
        except EmptyPage:
            products = paginator.page(paginator.num_pages)
        return products

    class Meta:
        verbose_name = "Категория"
        verbose_name_plural = "Категории"

    def __str__(self):
        return self.name
