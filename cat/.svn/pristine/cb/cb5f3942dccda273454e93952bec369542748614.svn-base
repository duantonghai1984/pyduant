#!/usr/bin/env python
# coding=utf-8

# Create your views here.
#from django.shortcuts import render
from django import  http
from django.template import loader, Context


def index(request):
    t=loader.get_template("home.html")
    c=Context()
    return http.HttpResponse(t.render(c))


def jieshao(request):
    t=loader.get_template("jieshao.html")
    c=Context()
    return http.HttpResponse(t.render(c))


def contract(request):
    t=loader.get_template("contract.html")
    c=Context()
    return http.HttpResponse(t.render(c))


def classesNews(request):
    t=loader.get_template("classes.html")
    c=Context()
    return http.HttpResponse(t.render(c))



