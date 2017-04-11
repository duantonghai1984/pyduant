#!/usr/bin/env python
# coding=utf-8

from django.conf.urls import patterns, url
from jiaoyu import views

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'anqier.views.home', name='home'),
    # url(r'^anqier/', include('anqier.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    
    #url(r'^jiaoyu/', include('jiaoyu.urls')),
    
    url(r'^$', views.index),
    url(r'^jieshao/$', views.jieshao),
    url(r'^contract/$', views.contract),
    url(r'^classes/$', views.classesNews),
)


