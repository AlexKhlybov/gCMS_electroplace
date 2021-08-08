from modeltranslation.translator import TranslationOptions, register

from ..models import ProductsCategoryPage


@register(ProductsCategoryPage)
class CategoryPageTranslationOptions(TranslationOptions):
    pass
