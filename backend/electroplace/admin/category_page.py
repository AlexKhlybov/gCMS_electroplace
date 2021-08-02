from ..models.category_page import ProductsCategory
from django.contrib import admin
from garpix_page.admin import BasePageAdmin


@admin.register(ProductsCategory)
class CategoryPageAdmin(BasePageAdmin):
    pass