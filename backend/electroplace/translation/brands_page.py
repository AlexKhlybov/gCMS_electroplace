from modeltranslation.translator import TranslationOptions, register
from ..models import BrandsPage


@register(BrandsPage)
class BrandsPageTranslationOptions(TranslationOptions):
    pass