from garpix_page.models import BasePage

from .product_page import ProductPage
from .contact_page import ContactPage



class CatalogPage(BasePage):
    template = 'pages/catalog_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['products'] = ProductPage.objects.filter(is_active=True).all()
        context['contacts'] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Каталог"
        verbose_name_plural = "Каталог"
        ordering = ('-created_at',)