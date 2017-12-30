# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.

class xszz(models.Model):
    title = models.CharField(max_length=200)
    link = models.CharField(max_length=200)
    time = models.CharField(max_length=200)