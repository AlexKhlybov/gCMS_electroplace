from django.contrib import admin

from ..models.benefits import Benefits


@admin.register(Benefits)
class BenefitsAdmin(admin.ModelAdmin):
    pass
