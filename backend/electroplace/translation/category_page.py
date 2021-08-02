from modeltranslation.translator import TranslationOptions, register
from ..models import ProductsCategory


@register(ProductsCategory)
class CategoryPageTranslationOptions(TranslationOptions):
    pass