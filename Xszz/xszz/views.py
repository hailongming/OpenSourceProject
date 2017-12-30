# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import xszz
# Create your views here.

def index(request):
    xszz_list = xszz.objects.all()
    context = {'xszz_list': xszz_list}
    return render(request, 'xszz/index.html', context)