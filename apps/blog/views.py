from django.shortcuts import render, render_to_response
from django.views.generic.base import View
# Create your views here.
from blog.models import Blog


class BlogHome(View):
    def get(self, request):
        return render(request, 'blog.html', {})


class Category(View):
    def get(self, request):
        return render(request, 'category.html', {})

class Single(View):
    def get(self, request, blog_id):
        blog = Blog.objects.get(id=blog_id)
        return render(request, 'single.html', {'blog': blog})

