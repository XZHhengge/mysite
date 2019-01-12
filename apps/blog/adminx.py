# -*- coding: utf-8 -*-
from django.db import models
from .models import HomeBanner, BlogType, Blog, BolgBanner, PersonCard


from markdown_editor.widgets import XAdminMarkdownWidget
import xadmin
from xadmin import views

# from markdownx.widgets import AdminMarkdownxWidget


# xadmin后台主题
class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


# xadmin全局设置
class GlobalSettings(object):
    # 后台头部
    site_title = 'My Blog Admin'
    # 后台尾部
    site_footer = 'My Blog'
    # 后台右边菜单式收齐
    menu_style = "accordion"


class UserAdmin(object):
    # 列表显示
    list_display = ['username ', 'first_name', 'last_name', 'email',]
    # 搜索
    search_fileds = ['username ', 'first_name', 'last_name', 'email',]
    #
    list_filter = ['username ', 'first_name', 'last_name', 'email',]
    # 排序
    ordering = []
    # 只读字段
    readonly_files = []
    # 不显示
    exclude = []


class HomeBannerAdmin(object):
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    search_fileds = ['title', 'image', 'url', 'index']
    list_filter = ['title', 'image', 'url', 'index', 'add_time']
    # 后台隐藏
    # exclude = ['add_time']

class BlogTypeAdmin(object):
    list_display = ['type_name']
    search_fileds = ['type_name']
    list_filter = ['type_name']


class BlogAdmin(object):
    list_display = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]
    search_fileds = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]
    list_filter = ['created_time', 'title', 'blog_type', 'author', 'response_count', 'last_updated_time', ]
    formfield_overrides = {models.TextField: {'widget': XAdminMarkdownWidget()},}
    # formfield_overrides = {models.TextField: {'widget': AdminMarkdownxWidget}, }
    # style_fields = {"content": "markdownx"}
    # style_fields = {"content": "ueditor"}
    # exclude = ['created_time']


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
# xadmin.site.register(Blog, MarkdownxModelAdmin)
xadmin.site.register(BolgBanner, BlogBannerAdmin)
xadmin.site.register(PersonCard, PeronalCardAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)
# xadmin.site.register_plugin(MarkdownPlugin, UpdateAdminView)
# xadmin.site.register_plugin(MarkdownPlugin, CreateAdminView)
