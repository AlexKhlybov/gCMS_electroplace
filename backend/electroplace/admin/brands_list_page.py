from django.contrib import admin
from garpix_page.admin import BasePageAdmin

from ..models.brand_list_page import BrandListPage


@admin.register(BrandListPage)
class BrandListPageAdmin(BasePageAdmin):
    pass
