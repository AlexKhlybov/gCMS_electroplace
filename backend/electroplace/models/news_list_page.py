from django.db import models

from garpix_page.models import BasePage

from .news_page import NewsPage


class NewsListPage(BasePage):
    template = 'pages/news_list_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['news'] = NewsPage.objects.filter(is_active=True).all()
        return context

    class Meta:
        verbose_name = "Список новостей"
        verbose_name_plural = "Список новостей"
        