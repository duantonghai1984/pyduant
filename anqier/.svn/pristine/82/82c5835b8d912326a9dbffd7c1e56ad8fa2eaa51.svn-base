# Create your views here.
from django.http import *
from django.shortcuts import *
from django.template import loader, Context
from jiaoyu.forms.Forms import QuesForm
from jiaoyu.models import *


def static(request):
    ''''
    with open(fullpath, 'rb') as f:
        response = HttpResponse(f.read(), mimetype=mimetype)
    response["Last-Modified"] = http_date(statobj.st_mtime)
    if stat.S_ISREG(statobj.st_mode):
        response["Content-Length"] = statobj.st_size
    if encoding:
        response["Content-Encoding"] = encoding
    return response
    '''
    return HttpResponse("test")

def index(request):
    print request.path
    t=loader.get_template("home.html")
    c=Context()
    return HttpResponse(t.render(c))


def jieshao(request):
    t=loader.get_template("jieshao.html")
    c=Context()
    return HttpResponse(t.render(c))


def contract(request):
    t=loader.get_template("contract.html")
    c=Context()
    return HttpResponse(t.render(c))


def classesNews(request):
    t=loader.get_template("classes.html")
    c=Context()
    return HttpResponse(t.render(c))


def question(request):
    qs=Question.objects.all().order_by('-date')
    return render_to_response("question.html",{'ques':qs})


def questionAdd(request):
    param={}
    errors="";
    if request.method=='POST':
        form1=QuesForm(request.POST)
        if form1.is_valid():
            form=form1.cleaned_data
            Question(title=form['title'],ques=form['ques'],
                     answer="",name=form['name'],
                     phone=form['phone']).save()
        else:
            param['form']=form1
            errors='error'
            
    #qs=Question.objects.all().order_by('date')
    #param['ques']=qs  
    if len(errors)>1:
        qs=Question.objects.all().order_by('-date')
        param['ques']=qs
        return render_to_response("question.html",param)
    else:
        return HttpResponseRedirect("/jiaoyu/question/")    
 
        