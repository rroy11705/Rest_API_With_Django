import django_filters
from app import models


class PlatformFilter(django_filters.FilterSet):
    platforms = django_filters.CharFilter(
        name='platforms__name',
        lookup_type='contains',
    )

    class Meta:
        model = models.WatchList
        fields = ('title', 'platforms')
