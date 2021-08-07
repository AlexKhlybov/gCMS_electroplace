from garpix_page.models import BasePage
from django.db import models

from .product_page import ProductPage
from .contact_page import ContactPage
from .brand_page import BrandPage
from .promo_slider import PromoSlider
from .news_page import NewsPage
from .benefits import Benefits


class HomePage(BasePage):
    template = 'pages/home_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['contacts'] = ContactPage.objects.all().first()
        context['hits'] = ProductPage.get_stock_products()
        context['brands'] = BrandPage.objects.all()
        context['promo'] = PromoSlider.objects.filter(is_active=True).all()
        context['top_news'] = NewsPage.objects.all().first()
        context['news'] = NewsPage.objects.all().exclude(id=context["top_news"].id)
        context['benefits'] = Benefits.objects.all()
        return context

    class Meta:
        verbose_name = "Главная"
        verbose_name_plural = "Главная"
        ordering = ('-created_at',)