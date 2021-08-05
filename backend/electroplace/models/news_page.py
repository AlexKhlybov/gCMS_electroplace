from garpix_page.models import BasePage
from django.db import models


class NewsPage(BasePage):
    title_news = models.CharField(verbose_name="Заголовок", max_length=128)
    subtitle = models.CharField(verbose_name="Подзаголовок", max_length=128)
    text = models.TextField(verbose_name="Текст", blank=True)
    image = models.ImageField(upload_to="Изображение", blank=True)

    template = 'pages/news_page.html'

    class Meta:
        verbose_name = "Новость"
        verbose_name_plural = "Новости"
        ordering = ('-created_at',)