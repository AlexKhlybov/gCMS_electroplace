from garpix_page.models import BasePage

from .category_page import ProductsCategoryPage
from .contact_page import ContactPage
from .news_page import NewsPage


class NewsListPage(BasePage):
    template = "pages/news_list_page.html"

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        news_list = NewsPage.objects.filter(is_active=True).all()

        context["page_obj"] = ProductsCategoryPage.get_paginate_by(request, news_list, 4)
        context["contacts"] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Список новостей"
        verbose_name_plural = "Список новостей"
