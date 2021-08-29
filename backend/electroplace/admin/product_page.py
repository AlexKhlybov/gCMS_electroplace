from django.contrib import admin
from garpix_page.admin import BasePageAdmin

from ..models.product_page import ProductPage


@admin.register(ProductPage)
class ProductPageAdmin(BasePageAdmin):
    pass
