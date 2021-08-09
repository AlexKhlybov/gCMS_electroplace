from django.db import models
from solo.models import SingletonModel


class SiteConfiguration(SingletonModel):

    # Соцсети
    facebook = models.CharField(max_length=256, blank=True, default='https://www.facebook.com/', verbose_name='Страница Facebook')
    instagram = models.CharField(max_length=256, blank=True, default='https://www.instagram.com/', verbose_name='Страница Instagram')
    vkontakte = models.CharField(max_length=256, blank=True, default='https://vk.com/', verbose_name='Страница VK')
    youtube = models.CharField(max_length=256, blank=True, default='https://www.youtube.com/', verbose_name='Страница Youtube')

    footer_copyright = models.CharField(max_length=256, blank=True,
                                        default='© Electro place, 2003–2021',
                                        verbose_name='Футер копирайт')

    def __str__(self):
        return 'Настройки сайта'

    class Meta:
        verbose_name = 'Настройки сайта'
        