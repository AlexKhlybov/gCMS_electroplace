from django.db import models
from garpix_page.models import BasePage

from .contact_page import ContactPage


class NewsPage(BasePage):
    title_news = models.CharField(verbose_name="Заголовок", max_length=128)
    subtitle = models.CharField(verbose_name="Подзаголовок", max_length=128)
    text = models.TextField(verbose_name="Текст", blank=True)
    image = models.ImageField(upload_to="Изображение", blank=True)

    template = "pages/news_page.html"

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context["contacts"] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Новость"
        verbose_name_plural = "Новости"
        ordering = ("-created_at",)
