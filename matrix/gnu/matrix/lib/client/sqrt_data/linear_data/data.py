#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue May 31 23:08:59 2022

@author: denis
"""

# data.cash __self__
class data(object):
    def cash(self, benefit=True):
        if benefit():
            self.cash()
        else:
            yield benefit()
            