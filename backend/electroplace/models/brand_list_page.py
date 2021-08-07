from garpix_page.models import BasePage

from .brand_page import BrandPage
from .contact_page import ContactPage


class BrandListPage(BasePage):
    template = 'pages/brands_list_page.html'

    def get_context(self, request=None, *args, **kwargs):
        context = super().get_context(request=request, *args, **kwargs)
        context['brands'] = BrandPage.objects.filter(is_active=True).all()
        context['contacts'] = ContactPage.objects.all().first()
        return context

    class Meta:
        verbose_name = "Список брендов"
        verbose_name_plural = "Список брендов"