from .views import movie_details, movie_list
from django.urls import path, include

urlpatterns = [
    path('all/', movie_list, name="movie-list"),
    path('<int:pk>/', movie_details, name="movie-details"),
]
