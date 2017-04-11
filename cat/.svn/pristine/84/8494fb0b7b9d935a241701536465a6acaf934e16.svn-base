#!/usr/bin/env python
# coding=utf-8

#import json


def object2dict(obj):
    d = {}
    d['__class__'] = obj.__class__.__name__
    d['__module__'] = obj.__module__
    d.update(obj.__dict__)
    return d
 
def dict2object(d):
    #convert dict to object
    if'__class__' in d:
        class_name = d.pop('__class__')
        module_name = d.pop('__module__')
        module = __import__(module_name)
        class_ = getattr(module,class_name)
        args = dict((key.encode('ascii'), value) for key, value in d.items()) #get args
        inst = class_(**args) #create new instance
    else:
        inst = d
    return inst



if __name__ == '__main__':
    '''
    module=__import__('weixin.mo.pos')
    print( dir(module))
 
    
    p=Res(1,'stet')
    dump = json.dumps(p,default=object2dict)
    print dump
    
    load = json.loads(dump,object_hook = dict2object)
    print load
    '''