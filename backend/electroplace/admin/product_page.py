from ..models.product_page import ProductPage
from django.contrib import admin
from garpix_page.admin import BasePageAdmin


@admin.register(ProductPage)
class ProductPageAdmin(BasePageAdmin):
    pass