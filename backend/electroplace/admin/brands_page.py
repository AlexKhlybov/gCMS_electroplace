from ..models.brands_page import BrandsPage
from django.contrib import admin
from garpix_page.admin import BasePageAdmin


@admin.register(BrandsPage)
class BrandsPageAdmin(BasePageAdmin):
    pass