# -*- coding: utf-8 -*-

import xadmin


from .models import HomeBanner, Myself, BlogType, Blog


class MyselfAdmin(object):
    pass


class HomeBannerAdmin(object):
    list_display = ['title', 'image','url', 'index', 'add_time']
    search_fileds = ['title', 'image','url', 'index',]
    list_filter = ['title', 'image','url', 'index', 'add_time']

class BlogTypeAdmin(object):
    list_display = ['type_name']
    search_fileds = ['type_name']
    list_filter = ['type_name']

class BlogAdmin(object):
    list_display = ['title', 'blog_type', 'author', 'created_time', 'last_updated_time', 'response_count',]
    search_fileds = ['title', 'blog_type', 'author', 'created_time', 'last_updated_time', 'response_count',]
    list_filter = ['title', 'blog_type', 'author', 'created_time', 'last_updated_time', 'response_count',]


xadmin.site.register(Myself, MyselfAdmin)
xadmin.site.register(HomeBanner, HomeBannerAdmin)
xadmin.site.register(BlogType, BlogTypeAdmin)
xadmin.site.register(Blog, BlogAdmin)