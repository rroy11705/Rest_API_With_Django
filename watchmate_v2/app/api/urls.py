# from .views import movie_details, movie_list
from .views import WatchListAV, WatchListDetailAV, StreamPlatformAV, StreamPlatformDetailAV, ReviewList, ReviewDetails, ReviewCreate
from django.urls import path, include

urlpatterns = [
    path('list/', WatchListAV.as_view(), name="watch-list"),
    path('list/<int:pk>/', WatchListDetailAV.as_view(), name="watchlist-detail"),

    path('platform/', StreamPlatformAV.as_view(), name='streamplatform-list'),
    path('platform/<int:pk>/', StreamPlatformDetailAV.as_view(), name='streamplatform-detail'),

    path('list/<int:pk>/reviews/', ReviewList.as_view(), name='review-list'),
    path('review/<int:pk>/', ReviewDetails.as_view(), name='review-detail'),

    path('list/<int:pk>/review-create/', ReviewCreate.as_view(), name='review-create'),
]
