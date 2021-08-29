from django.contrib import admin
from garpix_page.admin import BasePageAdmin

from ..models.home_page import HomePage


@admin.register(HomePage)
class HomePageAdmin(BasePageAdmin):
    pass
