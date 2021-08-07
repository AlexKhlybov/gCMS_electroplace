from ..models.brand_list_page import BrandListPage
from django.contrib import admin
from garpix_page.admin import BasePageAdmin


@admin.register(BrandListPage)
class BrandListPageAdmin(BasePageAdmin):
    pass
