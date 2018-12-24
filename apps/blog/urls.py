# -*- coding: utf-8 -*-
from django.urls import path
from blog import views


app_name = "blog"
urlpatterns=[
    path('', views.Blog.as_view(), name='blog'),
    path('category', views.Category.as_view(), name='category')
    # path('<int:pk>,', views.single, name='single')
]