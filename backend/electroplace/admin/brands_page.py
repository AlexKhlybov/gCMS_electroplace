from django.contrib import admin
from garpix_page.admin import BasePageAdmin

from ..models.brand_page import BrandPage


@admin.register(BrandPage)
class BrandPageAdmin(BasePageAdmin):
    pass
