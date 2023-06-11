#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# """
# Created on Wed Jun  1 00:12:03 2022

# @author: denis
# """

#
# Decouple range of parametric axes u/v from that of display axes x/y/z
#
set label 1 "Decouple range of parametric axes u/v\nfrom that of display axes x/y/z"
set label 1 at screen 0.1, 0.9
unset colorbox
set palette cubehelix cycle 3
set view equal xyz
set view 120, 300
set xyplane 0
set pm3d depthorder
set border 4095
set tics scale 0
set format ""
set angles radians
xx(u, v) = cos(v) * cos(u)
yy(u, v) = cos(v) * sin(u)
zz(u, v) = sin(v)
color(u, v) = sin(2*u)+sin(2*v)
#
set parametric
set isosamples 121, 61
set samples 121, 61
set urange [-pi:pi] 
set vrange [-pi/2:pi/2]
set xrange [-1:1] 
set yrange [-1:1]
set zrange [-1:1]
splot "++" using (xx($1,$2)):(yy($1,$2)):(zz($1,$2)):(color($1,$2)) with pm3d notitle

