# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.views import View


from blog.models import HomeBanner, Blog


# 主页面
class Home(View):
    def get(self, request):
        all_banner = HomeBanner.objects.all()
        all_blog = Blog.objects.all()
        hot_blog = all_blog.order_by("-click_number")[:5]

        return render(request, 'index.html',
                      {'all_banner': all_banner, 'all_blog': hot_blog, 'click': 1, 'titlename': 'Home',})


# 关于页面
class About(View):

    def get(self, request):
        return render(request, 'about.html',
                      {'titlename': 'About'})


# 联系页面
class Contact(View):

    def get(self, request):
        return render(request, 'contact.html',
                      {'titlename': 'Contact'})
