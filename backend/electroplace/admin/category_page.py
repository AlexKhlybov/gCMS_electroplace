from ..models.category_page import ProductsCategoryPage
from django.contrib import admin
from garpix_page.admin import BasePageAdmin


@admin.register(ProductsCategoryPage)
class CategoryPageAdmin(BasePageAdmin):
    pass