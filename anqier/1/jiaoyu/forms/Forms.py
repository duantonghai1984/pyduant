'''
Created on 2014-5-17

@author: duantonghai
'''

from django import forms

class QuesForm(forms.Form):
      title=forms.CharField(max_length=50)
      ques=forms.CharField(max_length=50)
      answer=forms.Textarea()
      name=forms.CharField(max_length=50)
      phone=forms.CharField(max_length=50)
      
      
      
      def clean_phone(self):
          phone=self.cleaned_data['phone']
          if len(phone)<5:
              raise forms.ValidationError("dfd")
          return phone
     