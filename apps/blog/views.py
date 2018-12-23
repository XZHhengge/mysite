from django.shortcuts import render, render_to_response
from django.views.generic.base import View
# Create your views here.


class Blog(View):
    def get(self, request):
        return render(request, 'blog.html', {})


class Category(View):
    def get(self, request):
        return render(request, 'category.html', {})
# def single2(request):
#     render_to_response('single2.html')
#
#
# def single3(request):
#     render_to_response('single3.html')

