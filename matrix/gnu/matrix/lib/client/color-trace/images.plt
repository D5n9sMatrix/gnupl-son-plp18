#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# """
# Created on Wed Jun  1 00:05:07 2022

# @author: denis
# """

set dummy t
set trange [0.00001:3]
plot t,log(t),-t,log(t),sin(t),t**2,-sin(t),t**2
