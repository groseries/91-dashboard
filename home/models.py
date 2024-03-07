from django.db import models
from django.utils import timezone

# Create your models here.


class SNA(models.Model):
    name = models.CharField(max_length=255)
    rank = models.CharField(max_length=255)

    def __str__(self):
        return self.name
    
class EzSkedEvent(models.Model):
    date = models.DateField(default=None)
    event_name = models.CharField(max_length=255, default=None)
    
    sna = models.ForeignKey(SNA, on_delete=models.PROTECT, default=None)
    
    event_type = models.CharField(max_length=255, default=None)
    remarks = models.CharField(max_length=255, default=None, null=True, blank=True)
    
    brief_time = models.TimeField(default=None)
    takeoff_time = models.TimeField(default=None)
    land_time = models.TimeField(default=None)

    crew_1 = models.CharField(max_length=255, default=None)
    crew_2 = models.CharField(max_length=255, default=None, null=True, blank=True)



    






    