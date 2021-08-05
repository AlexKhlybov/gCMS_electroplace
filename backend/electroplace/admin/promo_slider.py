from ..models.promo_slider import PromoSlider
from django.contrib import admin


@admin.register(PromoSlider)
class PromoSliderAdmin(admin.ModelAdmin):
    pass