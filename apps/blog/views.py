from django.shortcuts import render, render_to_response
from django.views.generic.base import View
# Create your views here.
from blog.models import Blog

from pure_pagination import Paginator, EmptyPage, PageNotAnInteger


class BlogHome(View):
    def get(self, request):
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        objects = ['john', 'edward', 'josh', 'frank']

        # Provide Paginator with the request object for complete querystring generation

        p = Paginator(objects, request=request)

        people = p.page(page)

        return render(request, 'blog.html', {'people': people,})


class Category(View):
    def get(self, request):
        return render(request, 'category.html', {})

class Single(View):
    def get(self, request, blog_id):
        blog = Blog.objects.get(id=blog_id)
        return render(request, 'single.html', {'blog': blog})

