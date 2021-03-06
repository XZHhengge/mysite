"""mysite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.urls import path, include, re_path
from django.views.static import serve

from mysite import views

import extra_apps.xadmin as xadmin
from mysite.settings import MEDIA_ROOT

urlpatterns = [
    path('', views.Home.as_view(), name='home'),
    re_path('media/(?P<path>.*)', serve, {"document_root": MEDIA_ROOT}),
    # re_path('static/(?P<path>.*)', serve, {"document_root": STATIC_ROOT}),
    path('about/', views.About.as_view(), name='about'),
    path('contact/', views.Contact.as_view(), name='contact'),
    path('blog/', include('blog.urls', namespace='blog')),
    # path('markdown_editor', include('markdown_editor.urls')),
    url(r'^markdown_editor/', include('markdown_editor.urls')),
    # path('ueditor', include('DjangoUeditor.urls')),
    path('xadmin/', xadmin.site.urls),
]

# 全局404和500页面配置
handler404 = 'view.page_not_found'
handler500 = 'view.page_error'