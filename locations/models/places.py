from django.contrib.gis.db import models as gis_models
from django.db import models


class Place(models.Model):
    name = models.CharField(
        "Place name",
        max_length=1024,
    )
    address = models.CharField("Address", max_length=2014, null=True)
    city = models.CharField("City", max_length=1024)
    district = models.CharField("District", max_length=1024)
    state = models.CharField("State", max_length=1024)
    country = models.CharField("Country", max_length=1024)
    zip = models.CharField(
        "ZIP / Postal code",
        max_length=6,
    )
    coordinates = gis_models.PointField(null=True)

    class Meta:
        db_table = "places"
