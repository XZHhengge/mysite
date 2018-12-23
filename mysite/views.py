# -*- coding: utf-8 -*-

from django.shortcuts import render
from django.views import View

class Home(View):
    def get(self, request):
        content = {}
        return render(request, 'index.html', content)


class About(View):

    def get(self, request):
        result = {}
        return render(request, 'about.html', result)


class Single(View):
    def get(self, request):

       return render(request, 'single.html', {})

class Single2(View):

    def get(self, request):
        return render(request, 'single2.html', {})

class Single3(View):

    def get(self, request):
        return render(request, 'single3.html', {})

class Style(View):
    def get(self, request):
        return render(request, 'style-guide.html', {})


class Contact(View):

    def get(self, request):
        return render(request, 'contact.html', {})
