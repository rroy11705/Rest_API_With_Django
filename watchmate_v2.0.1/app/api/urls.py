from django.urls import path
from app.api import views

urlpatterns = [
    path('', views.WatchListAV.as_view(), name="watch-list"),
    path('<int:pk>/', views.WatchListDetailAV.as_view(), name="watchlist-detail"),

    path('platform/', views.StreamPlatformAV.as_view(), name='streamplatform-list'),
    path('platform/<int:pk>/', views.StreamPlatformDetailAV.as_view(), name='streamplatform-detail'),

    path('<int:pk>/reviews/', views.ReviewList.as_view(), name='review-list'),
    path('review/<int:pk>/', views.ReviewDetails.as_view(), name='review-detail'),

    path('<int:pk>/review-create/', views.ReviewCreate.as_view(), name='review-create'),

    path('user-review/<str:username>/', views.UserReview.as_view(), name='user-review-detail'),
]
