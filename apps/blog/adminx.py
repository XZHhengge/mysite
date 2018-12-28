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
    list_display = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]
    search_fileds = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]
    list_filter = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]


xadmin.site.register(Myself, MyselfAdmin)
xadmin.site.register(HomeBanner, HomeBannerAdmin)
xadmin.site.register(BlogType, BlogTypeAdmin)
xadmin.site.register(Blog, BlogAdmin)