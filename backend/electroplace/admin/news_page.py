from django.contrib import admin
from garpix_page.admin import BasePageAdmin

from ..models.news_page import NewsPage


@admin.register(NewsPage)
class NewsPageAdmin(BasePageAdmin):
    pass
