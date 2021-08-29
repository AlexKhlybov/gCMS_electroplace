from django.contrib import admin

from ..models.promo_slider import PromoSlider


@admin.register(PromoSlider)
class PromoSliderAdmin(admin.ModelAdmin):
    pass
