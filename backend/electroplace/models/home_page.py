from django.db import models
from garpix_page.models import BasePage

from .benefits import Benefits
from .brand_page import BrandPage
from .contact_page import ContactPage
from .news_page import NewsPage
from .product_page import ProductPage
from .promo_slider import PromoSlider


class HomePage(BasePage):
    template = "pages/home_page.html"

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context["contacts"] = ContactPage.objects.all().first()
        context["hits"] = ProductPage.get_stock_products()
        context["brands"] = BrandPage.objects.all()
        context["promo"] = PromoSlider.objects.filter(is_active=True).all()
        context["top_news"] = NewsPage.objects.all().first()
        context["news"] = NewsPage.objects.all().exclude(id=context["top_news"].id)
        context["benefits"] = Benefits.objects.all()
        return context

    class Meta:
        verbose_name = "Главная"
        verbose_name_plural = "Главная"
        ordering = ("-created_at",)
