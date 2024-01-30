from django.db import models

# Create your models here.
class EzSkedEvent(models.Model):
    name = models.CharField(max_length=255)
    rank = models.CharField(max_length=255)
    date = models.DateField()
    