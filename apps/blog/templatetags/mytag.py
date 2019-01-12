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
    """re the image url from blog content"""
    try:
        pattern = re.compile(r'(/.*?(jpg|webp|png|jpeg|gif|bmp))', re.I)
        url = re.search(pattern, value)
        print(url.group(1))
        return url.group(1)
    except Exception:
        return None


