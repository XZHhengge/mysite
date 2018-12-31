# -*- coding: utf-8 -*-
from django.urls import path,re_path
from blog import views


app_name = "blog"

urlpatterns=[
    path('', views.BlogHome.as_view(), name='blog'),
    path('category_detail/<int:id>/', views.CategoryDetail.as_view(), name='category-detail'),
    path('category/', views.Category.as_view(), name='category'),
    # re_path('bolg_category/[1-9]$', views.Category.as_view(), name='category'),
    re_path('detail/(\d+)$', views.Single.as_view(), name='blog_detail'),
    path('search', views.Search.as_view(), name='search'),
]