from modeltranslation.translator import TranslationOptions, register
from ..models import NewsPage


@register(NewsPage)
class NewsPageTranslationOptions(TranslationOptions):
    pass