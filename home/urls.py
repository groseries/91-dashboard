from django.urls import path
from . import views

urlpatterns = [
    path('', views.ClassSchedule.as_view(), name='index'),
    path('weather',views.Weather.as_view(), name="weather"),
    path('shortcuts',views.Shortcuts.as_view(), name="shortcuts"),
    path('schedule',views.Schedule.as_view(), name="schedule"),
    path('class_schedule',views.ClassSchedule.as_view(), name="class_schedule"),
    path('stats', views.ClassStats.as_view(), name="stats"),
    path('slideshow', views.google_photos_slideshow, name="slideshow"),

]
