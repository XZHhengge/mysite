# -*- coding: utf-8 -*-
from django.urls import path,re_path
from blog import views


app_name = "blog"
urlpatterns=[
    path('', views.BlogHome.as_view(), name='blog'),
    path('category', views.Category.as_view(), name='category'),
    re_path('detail/(\d+)$', views.Single.as_view(), name ='blog_detail'),

]