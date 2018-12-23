# -*- coding:utf-8 -*-
from datetime import datetime

from django.db import models


class Myself(models.Model):
    text1 = models.TextField(verbose_name='文本1')
    text2 = models.TextField(verbose_name='文本2')
    text3 = models.TextField(verbose_name='文本3')
    csdn_url = models.CharField(max_length=20, verbose_name='CSDN博客地址')

    image = models.ImageField(upload_to="image/%Y/%m",verbose_name='个性图片' , max_length=100)

    class Meta:
        verbose_name = "个人介绍"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.csdn_url


class HomeBanner(models.Model):
    author = models.CharField(max_length=30, verbose_name='作者')
    title = models.CharField(max_length=100, verbose_name='标题')
    image = models.ImageField(upload_to='homebanner/%Y/%m', verbose_name='首页轮播图', max_length=100)
    url = models.URLField(max_length=200, verbose_name='访问地址')
    index = models.IntegerField(default=100, verbose_name='顺序')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '首页轮播图'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '{}(位于第{})'.format(self.title, self.index)


class BlogType(models.Model):
    type_name = models.CharField(max_length=50, verbose_name='博客类型')

    class Meta:
        verbose_name = '博客类型'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.type_name


class Blog(models.Model):
    title = models.TextField(verbose_name='标题')
    blog_type = models.ForeignKey(BlogType,on_delete=models.DO_NOTHING, verbose_name='博客类型')
    content = models.TextField(verbose_name='内容')
    author = models.CharField(max_length=100, default='博主', verbose_name='作者')
    created_time = models.DateTimeField(auto_created=True, verbose_name='创造时间')
    last_updated_time = models.DateTimeField(auto_now = True, verbose_name='最后更新时间')
    response_count = models.IntegerField(default='5', verbose_name='点击数')
    blog_url = models.CharField(max_length=50, verbose_name='博客链接', null=True, blank=True)

    class Meta:
        verbose_name = '博客'
        verbose_name_plural = verbose_name

    def __str__(self):
        return "<Blog: %s>" % self.title
