from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('watch/', include('app.api.urls')),
]


admin.autodiscover()
admin.site.enable_nav_sidebar = False