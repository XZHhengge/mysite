from django.db.models import Q
from django.shortcuts import render, render_to_response
from django.views.generic.base import View
# Create your views here.
from blog.models import Blog, BlogType

from pure_pagination import Paginator, PageNotAnInteger


# 博客首页
class BlogHome(View):

    def get(self, request):
        all_blog = Blog.objects.all()
        # 导航栏分类
        bar = BlogType.objects.all()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_blog, 10, request=request)
        all_blog = p.page(page)

                                # 这里的bar确定blog_base.html的导航栏
        return render(request, 'blog.html', {'all_blog': all_blog, 'bar':bar})


# 博客分类
class Category(View):
    def get(self, request, id):
        print(id)
        # 导航栏分类
        # bar = BlogType.objects.all()
        # 根据id选出分类
        blog_category = Blog.objects.filter(blog_type=id)
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        name = blog_category[0].blog_type
        p = Paginator(blog_category, 10, request=request)
        blog_category = p.page(page)
        print(12)
                                                        # 这里的blog_typ确定blog_base.html的导航栏
        return render(request, 'category.html', {'blog_category': blog_category, 'name': name, })


# 博客 详细页面
class Single(View):

    def get(self, request, id):
        # 导航栏分类
        bar = BlogType.objects.all()

        # 根据id选出该id的博客
        blog_detail = Blog.objects.get(id=id)
                                                            # 这里的blog_typ确定blog_base.html的导航栏
        return render(request, 'single-standard.html', {'blog': blog_detail, 'bar': bar})


# 全局搜索功能
class Search(View):

    def get(self, request):
        bar = BlogType.objects.all()
        search = request.GET.get('search','')
        search_blog = Blog.objects.filter(Q(title__icontains=search)|Q(content__icontains=search)|Q(blog_type__type_name__icontains=search))
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(search_blog, 10, request=request)
        search_blog = p.page(page)

        return render(request, 'blog.html', {'all_blog': search_blog, 'bar':bar})

    def post(self, request):
        pass