from django.contrib import admin
from garpix_page.admin import BasePageAdmin

from ..models.category_page import ProductsCategoryPage


@admin.register(ProductsCategoryPage)
class CategoryPageAdmin(BasePageAdmin):
    pass
