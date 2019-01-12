# -*- coding: utf-8 -*-
from django.shortcuts import render, render_to_response
from django.views import View


from blog.models import HomeBanner, Blog, UserProfile, PersonCard


# 主页面
class Home(View):
    def get(self, request):
        all_banner = HomeBanner.objects.all()
        user = UserProfile.objects.all()[0]
        cards = PersonCard.objects.all()
        all_blog = Blog.objects.all()
        hot_blog = all_blog.order_by("-click_number")[:5]
        return render(request, 'index.html',
                      {'all_banner': all_banner, 'all_blog': hot_blog, 'click': 1,
                       'titlename': 'Home', 'user': user, 'cards': cards})


# 关于页面
class About(View):

    def get(self, request):
        cards = PersonCard.objects.all()
        user = UserProfile.objects.all()[0]
        return render(request, 'about.html',
                      {'titlename': 'About', 'cards': cards, 'user': user})


# 联系页面
class Contact(View):
    def get(self, request):
        cards = PersonCard.objects.all()

        return render(request, 'contact.html',
                      {'titlename': 'Contact', 'cards': cards})


# 全局处理404页面
def page_not_found(request):
    response = render_to_response('404.html', {})
    response.status_code = 404
    return response


# 全局处理500页面
def page_error(request):
    response = render_to_response('500.html', {})
    response.status_code = 500
    return response
