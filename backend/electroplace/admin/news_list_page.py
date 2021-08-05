from ..models.news_list_page import NewsListPage
from django.contrib import admin
from garpix_page.admin import BasePageAdmin


@admin.register(NewsListPage)
class NewsListPageAdmin(BasePageAdmin):
    pass
