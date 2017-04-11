#coding:utf-8
from django.http import HttpResponse
from django.http import HttpRequest
#!/usr/bin/env python
# coding=utf-8

from learn import models
from django.views.decorators.csrf import csrf_exempt
import urllib2
from django.template import loader, Context

 
@csrf_exempt
def index(request):
    print(dir(request));
    print(request.body)
    return HttpResponse(u"欢迎光临  learn 自强学堂!")







def readPdf(request):
    '''
    response = urllib2.urlopen('http://dzdz.ciitc.com.cn/document/823baa00-5cc5-4db0-8200-fd1980a90dd7/view?expire=1475464673924&token=43be62a3eebe9a7aa04057f159518aa3') 
    html = response.read()
    print(html)
    
    html=html.replace("/dist/css/previewStyle.css","/static/css/previewStyle.css")
    html=html.replace("/images/vat_invoice_template.png","/static/images/vat_invoice_template.png")
    html=html.replace("/api/documents/sealImage/91310000080013687R","/static/images/91310000080013687R.png")
    html=html.replace("signature\"","signature\" style=\"transcolor:#FFFFFF;\"")
    html=html.replace("<body>",)
    
    return HttpResponse(html)
    '''

    t=loader.get_template("invoice.html")
    c=Context()
    return HttpResponse(t.render(c))
    
    