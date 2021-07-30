from ..models.catalog_page import CatalogPage
from django.contrib import admin
from garpix_page.admin import BasePageAdmin


@admin.register(CatalogPage)
class CatalogPageAdmin(BasePageAdmin):
    pass