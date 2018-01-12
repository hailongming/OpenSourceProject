# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import xszz
# Create your views here.
import matplotlib.pyplot as plt



def index(request):
    xszz_list = xszz.objects.all()
    xszz_tuple = tuple(xszz_list)
    xszz_list = list(xszz_tuple)
    context = {'xszz_list': xszz_list}
    return render(request, 'xszz/index.html', context)


def count():
    times = {'09': 0, '10': 0, '11': 0, '12': 0, '07': 0, '08': 0}
    xszz_list = xszz.objects.all()
    for each_xszz in xszz_list:
        time = each_xszz.time
        month = time.split('-')[1]
        if int(month)>=7 and int(month)<=12:
            times[month] = times[month]+1
    return times




times = count()
plt.xlabel(u'month')
plt.ylabel(u'number')
namelist = ['7','8','9','10','11','12']
numlist = [times['07'],times['08'],times['09'],times['10'],times['11'],times['12']]
plt.xticks(range(6),namelist)
plt.bar(range(len(numlist)),numlist,)
plt.show()