#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# """
# Created on Wed Jun  1 00:01:58 2022

# @author: denis
# """

set isosam 31,31

set table $field2xy
splot vtot(x,y) w l
unset table

unset autoscale
set xr [xmin:xmax]
set yr [ymin:ymax]
set isosam 31,31
set key under Left reverse
plot $field2xy u 1:2:(coef*dx1($1,$2)):(coef*dy1($1,$2)) w vec, \
     $equipo2 w l
