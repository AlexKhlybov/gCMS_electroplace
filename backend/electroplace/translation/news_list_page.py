from modeltranslation.translator import TranslationOptions, register
from ..models import NewsListPage


@register(NewsListPage)
class NewsListPageTranslationOptions(TranslationOptions):
    pass