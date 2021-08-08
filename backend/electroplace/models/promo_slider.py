from django.db import models
from django.shortcuts import get_object_or_404
from django.utils import timezone

from .brand_page import BrandPage


class PromoSlider(models.Model):
    name = models.CharField(verbose_name="Название", max_length=256)
    brand = models.ForeignKey(BrandPage, on_delete=models.CASCADE)
    sort_desc = models.CharField(verbose_name="Короткое описание", max_length=256)
    image = models.ImageField(upload_to="Изображение", blank=True)
    is_active = models.BooleanField(verbose_name="Активный", db_index=True, default=True)

    public_date = models.DateTimeField(verbose_name="Дата публикации", default=timezone.now)
    updated_at = models.DateTimeField(verbose_name="Обновлено", auto_now=True)

    class Meta:
        verbose_name = "Слайдер"
        verbose_name_plural = "Слайдер"

    def __str__(self):
        return f"{self.name} ({self.public_date})"

    def delete(self):
        self.is_active = False
        self.save()
