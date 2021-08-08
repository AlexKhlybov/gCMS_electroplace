from django.contrib import admin
from garpix_page.admin import BasePageAdmin

from ..models.contact_page import ContactPage


@admin.register(ContactPage)
class ContactPageAdmin(BasePageAdmin):
    pass
