#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# """
# Created on Wed Jun  1 00:17:38 2022

# @author: denis
# """

 	
set cntrparam levels auto 10
set view 60, 30, 1.0, 1.1
set title "contours on base grid with labels"
set contour base
set cntrlabel font ",7"
splot x**2-y**2 with lines, x**2-y**2 with labels boxed notitle
