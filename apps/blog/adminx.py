# -*- coding: utf-8 -*-

import xadmin


from .models import HomeBanner, BlogType, Blog, BolgBanner, PersonCard


class UserAdmin(object):
    list_display = ['username ', 'first_name', 'last_name', 'email',]
    search_fileds = ['username ', 'first_name', 'last_name', 'email',]
    list_filter = ['username ', 'first_name', 'last_name', 'email',]


class HomeBannerAdmin(object):
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    search_fileds = ['title', 'image', 'url', 'index']
    list_filter = ['title', 'image', 'url', 'index', 'add_time']


class BlogTypeAdmin(object):
    list_display = ['type_name']
    search_fileds = ['type_name']
    list_filter = ['type_name']


class BlogAdmin(object):
    list_display = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]
    search_fileds = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]
    list_filter = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]


class BlogBannerAdmin(object):
    list_display = ['title', 'image', 'index', 'add_time']
    search_fileds = ['title', 'image', 'index']
    list_filter = ['title', 'image', 'index', 'add_time']


class PeronalCardAdmin(object):
    list_display = ['user', 'card_name', 'card_title']
    search_fileds = ['user', 'card_name', 'card_title']
    list_filter = ['user', 'card_name', 'card_title']


xadmin.site.register(HomeBanner, HomeBannerAdmin)
xadmin.site.register(BlogType, BlogTypeAdmin)
xadmin.site.register(Blog, BlogAdmin)
xadmin.site.register(BolgBanner, BlogBannerAdmin)
xadmin.site.register(PersonCard, PeronalCardAdmin)
