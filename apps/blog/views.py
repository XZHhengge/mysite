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

        # 导航栏分类
        bar = BlogType.objects.all()
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
                                                        # 这里的blog_typ确定blog_base.html的导航栏
        return render(request, 'category.html', {'blog_category': blog_category, 'name': name, 'bar': bar})


# 博客 详细页面
class Single(View):

    def get(self, request, id):
        # 导航栏分类
        bar = BlogType.objects.all()

        # 根据id选出该id的博客
        blog_detail = Blog.objects.get(id=id)
                                                            # 这里的blog_typ确定blog_base.html的导航栏
        return render(request, 'single-standard.html', {'blog': blog_detail, 'bar': bar})

