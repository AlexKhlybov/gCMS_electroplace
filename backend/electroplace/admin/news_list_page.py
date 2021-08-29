from django.contrib import admin
from garpix_page.admin import BasePageAdmin

from ..models.news_list_page import NewsListPage


@admin.register(NewsListPage)
class NewsListPageAdmin(BasePageAdmin):
    pass
