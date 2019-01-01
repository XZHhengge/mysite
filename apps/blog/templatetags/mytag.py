# -*- coding:utf-8 -*-
from django import template
register = template.Library()


# 自定义模板标签
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
