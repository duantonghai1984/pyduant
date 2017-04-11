from django.conf.urls import patterns, include, url
from jiaoyu.views import *

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
    
    url(r'^$', index),
    url(r'^jieshao/$', jieshao),
    url(r'^contract/$', contract),
     url(r'^classes/$', classesNews),
    
)


