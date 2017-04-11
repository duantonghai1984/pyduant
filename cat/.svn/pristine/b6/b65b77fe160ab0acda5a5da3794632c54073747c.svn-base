#!/usr/bin/env python
# coding=utf-8

#from django.db import models

# Create your models here.


from django.db import models
from datetime import datetime
from django.db.models import permalink



userStatus = (
        (1, '正常'),
        (2, '已认证'),
        (3, '作废'),
    )


userType = (
        (1, '管理员'),
        (2, '学生'),
        (3, '老师'),
    )

class User(models.Model):
    '''用户经验表'''
    lname=models.CharField('登录名',max_length=50)
    pwd=models.CharField('密码',max_length=50)
    image=models.CharField('头像',max_length=50,null=True)
    name=models.CharField('名称',max_length=50)
    age=models.IntegerField('年龄',null=True)
    
    birth=models.DateField('生日',null=True)
    phone=models.CharField('手机',max_length=50)
    qq=models.CharField('qq',max_length=50,null=True)
    email=models.CharField('邮箱地址',max_length=50,null=True)
    
    type=models.IntegerField('类型',choices=userType,default=1)
    groupId=models.IntegerField('分组id',null=True)
    status=models.IntegerField('状态',choices=userStatus,default=1)
     
    des=models.CharField('登录名',max_length=200,null=True)
    gmtCreated=models.DateTimeField('创建时间',default=datetime.now())
    
    
    def __unicode__(self):
        return self.name
    
    
    class Meta:
        db_table = 'user'  
        verbose_name = '系统用户表'  
    





class Item(models.Model):
    name=models.CharField('名称',max_length=50)
    des=models.TextField()
    
     
    def __unicode__(self):
        return self.name
    
    
    @permalink
    def get_absolute_url(self):
        return {'item_detail',None,{'object_id':self.id}}
    
    
    
class Photo(models.Model):
    item=models.ForeignKey(Item)
    title=models.CharField(max_length=100)
    image=models.ImageField(upload_to='photos')
    caption=models.CharField(max_length=200,blank=True)
    
    
    
    def __unicode__(self):
        return self.title
    
    
from  django.contrib import admin  
  

class PhotoInline(admin.StackedInline):
    model=Photo
    
class ItemAdmin(admin.ModelAdmin):
    inlines=[PhotoInline]
    
admin.site.register(Item,ItemAdmin)
admin.site.register(Photo)
          
'''
class Experience(models.Model):

    id=models.IntegerField() 

    startDate=models.DateField()
    endDate=models.DateField()
    org=models.CharField(max_length=50)
    content = models.TextField()
    
    type=models.IntegerField()
    gmtCreated=models.DateTimeField()
    
    
    def __unicode__(self):
        return self.name
'''



