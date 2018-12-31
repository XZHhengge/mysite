# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.views import View


from blog.models import HomeBanner, Blog




class Home(View):
    def get(self, request):
        all_banner = HomeBanner.objects.all()
        all_blog = Blog.objects.all()
        hot_blog = all_blog.order_by("-click_number")[:5]

        return render(request, 'index.html',
                      {'all_banner': all_banner, 'all_blog': hot_blog, 'click': 1, 'titlename': 'Home',})


class About(View):

    def get(self, request):
        return render(request, 'about.html',
                      {'titlename': 'About'})




class Style(View):
    def get(self, request):
        return render(request, 'style-guide.html', {})


class Contact(View):

    def get(self, request):
        return render(request, 'contact.html',
                      {'titlename': 'Contact'})
