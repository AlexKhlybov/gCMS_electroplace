from modeltranslation.translator import TranslationOptions, register
from ..models import ProductPage


@register(ProductPage)
class ProductPageTranslationOptions(TranslationOptions):
    pass