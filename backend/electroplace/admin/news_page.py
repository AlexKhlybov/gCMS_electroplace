from ..models.news_page import NewsPage
from django.contrib import admin
from garpix_page.admin import BasePageAdmin


@admin.register(NewsPage)
class NewsPageAdmin(BasePageAdmin):
    pass