# from .views import movie_details, movie_list
from .views import WatchListAV, WatchListDetailAV, StreamPlatformAV, StreamPlatformDetailAV, ReviewList, ReviewDetails, ReviewCreate
from django.urls import path, include

urlpatterns = [
    path('list/', WatchListAV.as_view(), name="watch-list"),
    path('list/<int:pk>/', WatchListDetailAV.as_view(), name="watchlist-detail"),

    path('stream/', StreamPlatformAV.as_view(), name='streamplatform-list'),
    path('stream/<int:pk>', StreamPlatformDetailAV.as_view(), name='streamplatform-detail'),

    path('<int:pk>/reviews/', ReviewList.as_view(), name='review-list'),
    path('reviews/<int:pk>', ReviewDetails.as_view(), name='review-detail'),

    path('<int:pk>/review-create/', ReviewCreate.as_view(), name='review-create'),
]
