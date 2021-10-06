from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
from django.contrib.auth.models import User


DEFAULT_PLATFORM_ID = 6


class StreamPlatform(models.Model):
    name = models.CharField(max_length=64)
    about = models.TextField(max_length=512)
    website = models.URLField(max_length=128)

    def __str__(self):
        return self.name

class WatchList(models.Model):
    title = models.CharField(max_length=256)
    storyline = models.TextField(max_length=2048)
    platforms = models.ForeignKey(StreamPlatform, on_delete=models.CASCADE, related_name="watchlist", default=DEFAULT_PLATFORM_ID)
    avg_rating = models.FloatField(default=0)
    number_rating = models.IntegerField(default=0)
    active = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title


class Review(models.Model):
    reviewer = models.ForeignKey(User, on_delete=models.CASCADE)
    rating = models.PositiveIntegerField(
        validators=[MinValueValidator(1), MaxValueValidator(5)])
    description = models.CharField(max_length=256, null=True)
    watchlist = models.ForeignKey(WatchList, on_delete=models.CASCADE, related_name="reviews")
    active = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)
    update = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.rating) + " | " + self.watchlist.title + " | " + str(self.review_user)
