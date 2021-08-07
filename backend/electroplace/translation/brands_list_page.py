from modeltranslation.translator import TranslationOptions, register
from ..models import BrandListPage


@register(BrandListPage)
class BrandListPageTranslationOptions(TranslationOptions):
    pass