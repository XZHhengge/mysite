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
from django.urls import path,include
from mysite import views

import extra_apps.xadmin as xadmin
urlpatterns = [
    path('', views.Home.as_view(), name='home'),

    path('about/', views.About.as_view(), name='about'),
    path('contact/', views.Contact.as_view(), name='contact'),
    path('single/', views.Single.as_view(), name='single'),
    path('single2/', views.Single2.as_view(), name='single2'),
    path('single3/', views.Single3.as_view(), name='single3'),
    path('style-guide/', views.Style.as_view(), name='style'),

    path('blog/', include('blog.urls', namespace='blog')),
    path('xadmin/', xadmin.site.urls),
]
