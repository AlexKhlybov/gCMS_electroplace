from django.contrib import admin

from ..models.brand_page import BrandPage

from garpix_page.admin import BasePageAdmin


@admin.register(BrandPage)
class BrandPageAdmin(BasePageAdmin):
    pass
