# -*- coding:utf-8 -*-
from datetime import datetime

from django.contrib.auth.models import AbstractUser
from django.db import models

# from DjangoUeditor.models import UEditorField
# from markdown_editor.models import

# 个人信息
class UserProfile(AbstractUser):
    text1 = models.TextField(verbose_name='文本1', blank=True)
    text2 = models.TextField(verbose_name='文本2', blank=True)
    text3 = models.TextField(verbose_name='文本3', blank=True)
    image = models.ImageField(upload_to="myself/%Y/%m",
                              verbose_name='个性图片', max_length=100, null=True, blank=True)

    class Meta:
        verbose_name = "个人信息"
        verbose_name_plural = verbose_name
        ordering = ['-id']

    def __str__(self):
        return self.username


class HomeBanner(models.Model):
    author = models.CharField(max_length=30, verbose_name='作者', blank=True)
    title = models.CharField(max_length=100, verbose_name='标题', blank=True)
    image = models.ImageField(upload_to='homebanner/%Y/%m', verbose_name='首页轮播图',
                              max_length=100, null=True, blank=True)
    url = models.URLField(max_length=200, verbose_name='访问地址', null=True, blank=True)
    index = models.IntegerField(default=100, verbose_name='顺序')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '首页轮播图'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '{}(位于第{})'.format(self.title, self.index)


# 博客轮播图
class BolgBanner(models.Model):
    author = models.CharField(max_length=30, verbose_name='作者', blank=True)
    title = models.CharField(max_length=100, verbose_name='标题', blank=True)
    image = models.ImageField(upload_to='blog_banner/%Y/%m', verbose_name='博客轮播图',
                              max_length=100, blank=True)
    index = models.IntegerField(default=100, verbose_name='顺序')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '博客轮播图'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '{}(位于第{})'.format(self.title, self.index)


class BlogType(models.Model):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, blank=True, verbose_name="用户名")
    type_name = models.CharField(max_length=50, verbose_name='博客类型')
    # type_title = models.CharField(max_length=200, verbose_name='博客标题', blank=True)
    image = models.ImageField(upload_to='Blog_type/%Y/%m', verbose_name='分类插图', max_length=100,
                              blank=True, null=True)

    class Meta:
        verbose_name = '博客类型'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.type_name


class Blog(models.Model):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, blank=True, verbose_name="用户名")
    author = models.CharField(max_length=30, verbose_name='作者', blank=True)
    title = models.TextField(verbose_name='标题', blank=True)
    blog_type = models.ForeignKey(BlogType,on_delete=models.DO_NOTHING, verbose_name='博客类型')
    content = models.TextField(verbose_name='内容', blank=True)
    # content = MarkdownxField(verbose_name='内容', blank=True)
    # content = UEditorField(verbose_name='博客正文', blank=True,imagePath="blog/images/%Y/%m",
    #                        filePath="blog/file/%Y/%m")
    created_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')
    image = models.ImageField(upload_to='homeblogimage/%Y/%m', verbose_name='首页博客缩图',
                              max_length=100, null=True, blank=True, default=u"")
    last_updated_time = models.DateTimeField(default=datetime.now, verbose_name='最后更新时间')
    response_count = models.IntegerField(default=0, verbose_name='回复数')
    click_number = models.IntegerField(default=0, verbose_name='点击数')
    blog_url = models.CharField(max_length=50, verbose_name='博客链接', blank=True, null=True)

    class Meta:
        verbose_name = '博客'
        verbose_name_plural = verbose_name
        ordering = ['-id']

    def __str__(self):
        return "第{0}篇{1}博客".format(self.id, self.title)


# 个人卡片
class PersonCard(models.Model):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, blank=True, verbose_name="用户名")
    card_name = models.CharField(verbose_name='卡片名字',  blank=True, max_length=30)
    card_title = models.CharField(max_length=150, verbose_name='卡片说明', blank=True)
    card_url = models.CharField(max_length=150, verbose_name='卡片地址',  blank=True)

    class Meta:
        verbose_name = '个人卡片'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.user.username
