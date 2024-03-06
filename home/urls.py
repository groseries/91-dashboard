from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('weather',views.Weather.as_view(), name="weather"),
    path('shortcuts',views.Shortcuts.as_view(), name="shortcuts"),
    path('schedule',views.Schedule.as_view(), name="schedule"),
    path('det_tracker',views.DetTracker.as_view(), name="det_tracker"),


]
