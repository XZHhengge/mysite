from _datetime import datetime


from django.db import models
from django.contrib.auth.models import User

# Create your models here.

# Create your models here.


class HomeBanner(models.Model):
    title = models.CharField(max_length=100, verbose_name='标题')
    iamge = models.ImageField(upload_to='banner/%Y/%m', verbose_name='首页轮播图', max_length=100)
    url = models.CharField(max_length=200, verbose_name='图片地址')
    index = models.IntegerField(default=100, verbose_name='顺序')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meata:
        verbose_name = '首页轮播图'
        verbose_name_plural = verbose_name

# class BlogType(models.Model):
#     type_name = models.CharField(max_length=50)
#
#     def __str__(self):
#         return self.type_name
#
# class Blog(models.Model):
#     title = models.CharField(max_length=50)
#     blog_type = models.ForeignKey(BlogType,on_delete=models.DO_NOTHING)
#     content = models.TextField()
#     author = models.ForeignKey(User,on_delete=models.DO_NOTHING)
#     created_time = models.DateTimeField(auto_created=True)
#     last_updated_time = models.DateTimeField(auto_now = True)
#
#     def __str__(self):
#         return "<Blog: %s>" % self.title
