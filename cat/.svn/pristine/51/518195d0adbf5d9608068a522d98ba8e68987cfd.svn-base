from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'cat.views.home', name='home'),
    # url(r'^cat/', include('cat.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^learn/', include('learn.urls')),
    url(r'^jiaoyu/', include('jiaoyu.urls')),
    url(r'^ma/', include('ma.urls')),
)
