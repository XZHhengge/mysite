# -*- coding:utf-8 -*-
import re
from django import template
register = template.Library()


# 自定义加模板
@register.filter
def subtract(value, arg):
    """subtract the arg to the value."""
    try:
        return int(value) - int(arg)
    except (ValueError, TypeError):
        try:
            return value - arg
        except Exception:
            return ''


# 正则匹配文章的图片
@register.filter
def image_url(value):
    """re the image url the from blog content"""
    try:
        pattern = re.compile(r'(/.*?(jpg|webp|png|jpeg|gif|bmp))', re.I)
        url = re.search(pattern, value)
        print(url.group(1))
        return url.group(1)
    except Exception:
        return None


# 正则匹配文章的中文内容
@register.filter
def re_content(value):
    """re the chinese content from the blog content"""
    try:
        re_image = re.search('png|ebp|jpg|peg|gif|bmp', value).span()[0]

        # print(re.findall('[\u4e00-\u9fa5]', str2))
        return value[re_image+5:120]
    # 如果没有图片
    except AttributeError:
        # 还有图片
        # if re.search('png|ebp|jpg|peg|gif|bmp', value):
        #     return '莫思身外无穷事,且尽生前有限杯.'
        # print(e)
        # pattern = re.compile('[\u4e00-\u9fa5]')
        # content = re.findall(pattern, value)

        # return ''.join(content[:54])+'......'
        return value[:120]
