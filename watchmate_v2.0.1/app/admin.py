from django.contrib import admin
from .models import WatchList, StreamPlatform, Review

# Register your models here.


class WatchListAdmin(admin.ModelAdmin):
    list_display = [
        "title",
        "active"
    ]


class ReviewAdmin(admin.ModelAdmin):
    list_display = [
        "reviewer",
        "rating",
        "watchlist"
    ]

admin.site.register(WatchList, WatchListAdmin)
admin.site.register(Review, ReviewAdmin)
admin.site.register(StreamPlatform)
