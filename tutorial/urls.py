from django.conf.urls import include
from django.conf.urls import patterns
from django.conf.urls import url
from django.contrib import admin

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'tutorial.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
)





urlpatterns = [
    url(r'^', include('snippets.urls')),
]

urlpatterns += [
    url(r'^api-auth/', include('rest_framework.urls',
                               namespace='rest_framework')),
]