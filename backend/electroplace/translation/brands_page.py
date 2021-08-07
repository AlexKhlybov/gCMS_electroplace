from modeltranslation.translator import TranslationOptions, register
from ..models import BrandPage


@register(BrandPage)
class BrandsPageTranslationOptions(TranslationOptions):
    pass