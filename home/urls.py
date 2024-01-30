from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('dash',views.MainDash.as_view(), name="dash")
]
