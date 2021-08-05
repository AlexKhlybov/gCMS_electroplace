from garpix_page.models import BasePage
from django.db import models

from .contact_page import ContactPage
from .brands_page import BrandsPage
from .promo_slider import PromoSlider
from .benefits import Benefits


class HomePage(BasePage):
    template = 'pages/home_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['contacts'] = ContactPage.objects.all().first()
        context['brands'] = BrandsPage.objects.all()
        context['promo'] = PromoSlider.objects.filter(is_active=True).all()
        context['benefits'] = Benefits.objects.all()
        return context

    class Meta:
        verbose_name = "Главная"
        verbose_name_plural = "Главная"
        ordering = ('-created_at',)