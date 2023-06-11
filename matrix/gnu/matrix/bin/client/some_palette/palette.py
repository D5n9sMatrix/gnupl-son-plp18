#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue May 31 23:18:24 2022

@author: denis
"""

# palette.data __self__
class palette(object):
    def data(self, name=None, filename=None, type_ob=True):
        self.name = name()
        self.filename = name()
        self.type_ob = 1*10
        
        if name():
            list(name())
        else:
            yield name()
        if filename():
            list(name())
        else:
            return filename()
        if type_ob():
            print("values objects", type_ob(100))
        else:
            yield type_ob(100)
            