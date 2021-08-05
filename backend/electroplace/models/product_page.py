from garpix_page.models import BasePage
from django.db import models

from .contact_page import ContactPage
from .category_page import ProductsCategoryPage
from .brands_page import BrandsPage

from random import sample


class ProductPage(BasePage):
    category = models.ForeignKey(ProductsCategoryPage, on_delete=models.CASCADE)
    brands = models.ForeignKey(BrandsPage, on_delete=models.CASCADE)

    name = models.CharField(verbose_name="Продукт", max_length=128)
    image = models.ImageField(upload_to="Изображение", blank=True)
    price = models.DecimalField(verbose_name="Цена", max_digits=8, decimal_places=2, default=0)
    old_price = models.DecimalField(verbose_name="Старая цена", max_digits=8, decimal_places=2, default=0, blank=True)
    screen = models.DecimalField(verbose_name="Экран", max_digits=3, decimal_places=2, default=0, blank=True)
    sim = models.PositiveIntegerField(verbose_name="Кол-во сим карт", default=0, blank=True)
    storage = models.PositiveIntegerField(verbose_name="Хранилище", default=0, blank=True)
    color = models.CharField(verbose_name="Цвет", max_length=128, blank=True)
    quantity = models.PositiveIntegerField(verbose_name="Кол-во", default=0)

    is_stock = models.BooleanField(verbose_name="В акции", db_index=True, default=False)
    is_new = models.BooleanField(verbose_name="Новинка", db_index=True, default=False)

    template = 'pages/product_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['address'] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Товар"
        verbose_name_plural = "Товары"
        ordering = ('-created_at',)

    def __str__(self):
        return f"{self.name} {self.storage} {self.color}"

    @staticmethod
    def get_items():
        return ProductPage.objects.filter(is_active=True, category=2).order_by("category", "name")

    @staticmethod
    def get_stock_products():
        product_stock = ProductPage.objects.filter(is_stock=True)
        stock = sample(list(product_stock), 4)
        return stock

    