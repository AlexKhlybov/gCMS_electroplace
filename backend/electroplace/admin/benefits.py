from ..models.benefits import Benefits
from django.contrib import admin


@admin.register(Benefits)
class BenefitsAdmin(admin.ModelAdmin):
    pass