from django.db import models


class Benefits(models.Model):
    title = models.CharField(verbose_name="Заголовок", max_length=128)
    desc = models.TextField(verbose_name="Текст", blank=True)

    class Meta:
        verbose_name = "Преимущество"
        verbose_name_plural = "Преимущества"

    def __str__(self):
        return f"{self.title}"
