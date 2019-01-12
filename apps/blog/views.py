import re
from django.db.models import Q
from django.shortcuts import render
from django.views.generic.base import View
# Create your views here.
from blog.models import Blog, BlogType, BolgBanner, UserProfile

from pure_pagination import Paginator, PageNotAnInteger


# 博客首页
class BlogHome(View):

    def get(self, request):
        all_blog = Blog.objects.all()
        # 博客轮播图
        blog_banner = BolgBanner.objects.all()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_blog, 10, request=request)
        all_blog = p.page(page)

        return render(request, 'blog.html', {'all_blog': all_blog, 'blog_banner': blog_banner, })


# 博客详细页面
class CategoryDetail(View):
    def get(self, request, id):
        blog_category = Blog.objects.filter(blog_type=id)
        # for i in blog_category:
        #     print(type(i.image.path))
        # print(len(blog_category[0].image))
        # print(isinstance(blog_category[0].image, None))
        # assert blog_category[0].image == None
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
            # 取到该博客分类的类别名
        name = blog_category[0].blog_type
        p = Paginator(blog_category, 10, request=request)
        blog_category = p.page(page)
        return render(request, 'category.html', {'blog_category': blog_category, 'name': name})


# 博客分类
class Category(View):
    def get(self, request):
        blog_category = BlogType.objects.all()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(blog_category, 10, request=request)
        blog_category = p.page(page)
        return render(request, 'blog-category.html', {'blog_category': blog_category})


# 博客 详细页面
class Single(View):

    def get(self, request, id):

        # 根据id选出该id的博客
        blog_detail = Blog.objects.get(id=id)
        return render(request, 'single-standard.html', {'blog': blog_detail})


# 全局搜索功能
class Search(View):

    def get(self, request):
        search = request.GET.get('search','')
        search_blog = Blog.objects.filter(Q(title__icontains=search) |
                                          Q(content__icontains=search) |Q(blog_type__type_name__icontains=search))
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(search_blog, 10, request=request)
        search_blog = p.page(page)

        return render(request, 'category.html', {'blog_category': search_blog, 'keyword': search})

    def post(self, request):
        pass
