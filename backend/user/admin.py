from django.contrib import admin
from django.contrib.auth.admin import UserAdmin

from .models import User


@admin.register(User)
class UserAdmin(UserAdmin):
    fieldsets = (
        (
            "Viber",
            {
                "fields": (
                    "viber_chat_id",
                    "viber_secret_key",
                )
            },
        ),
    ) + UserAdmin.fieldsets
