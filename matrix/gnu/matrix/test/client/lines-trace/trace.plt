#!/usr/bin/gnuplot -persist
# -*- coding: utf-8 -*-
# """
# Created on Tue May 31 23:30:04 2022

# @author: denis
# """

# lines trace
set key left box
set samples 200
plot [-3:5] asin(x),acos(x)
