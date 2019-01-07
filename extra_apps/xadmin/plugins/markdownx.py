# # -*- coding:utf-8 -*-
# # Author: cmzz
# # @Time :19-1-6
#
# from django.db.models import TextField
# from django.conf import settings
#
# import xadmin
# from xadmin.views import BaseAdminPlugin, CreateAdminView, UpdateAdminView
# from markdownx.models import MarkdownxField
# from markdownx.widgets import MarkdownxWidget
# from markdownx import fields
#
#
# class XadminMarkdownxWidget(MarkdownxWidget):
#     def __init__(self, **kwargs):
#         self.markdownx_options=kwargs
#         self.Media.js = None
#         super(XadminMarkdownxWidget, self).__init__(kwargs)
#
#
# class MarkdownPlugin(BaseAdminPlugin):
#
#     def get_field_style(self, attrs, db_filed, style, **kwargs):
#         if style == 'markdownx':
#             if isinstance(db_filed, MarkdownxField):
#                 # widget = MarkdownxWidget()
#                 # param = {}
#                 # param.update(widget)
#                 # param.update(widget.attrs)
#                 return {'widget': XadminMarkdownxWidget()}
#         return attrs
#
#     def block_extrahead(self, content, nodes):
#         js = '<script type="text/javascript" src={}></script>'.format(settings.STATIC_URL + "markdownx/js/markdownx.js")
#         nodes.append(js)
#
#
# xadmin.site.register_plugin(MarkdownPlugin, UpdateAdminView)
# xadmin.site.register_plugin(MarkdownPlugin, CreateAdminView)
