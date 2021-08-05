from django.contrib import admin

from ..models.brands_page import BrandsPage

from garpix_page.admin import BasePageAdmin


@admin.register(BrandsPage)
class BrandsAdmin(BasePageAdmin):
    pass
