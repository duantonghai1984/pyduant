#!/usr/bin/env python
# coding=utf-8

from django import  forms
from ma import models

class UserForm(forms.ModelForm):
    class Meta:
        model=models.User
        fields = ('lname', 'pwd','name','phone')
        #type=forms.IntegerField(widget=forms.Select(choices=models.userType)) 
        #exclude = ('birth_date',)
