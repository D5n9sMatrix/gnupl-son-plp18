#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# """
# Created on Tue May 31 23:52:53 2022

# @author: denis
# """


# This file demonstrates
# -1- saving contour lines as a gnuplottable datablock
# -2- plotting a vector field on the same graph
# -3- manipulating columns using the '$1,$2' syntax.
# the example is taken here from Physics is the display of equipotential
# lines and electrostatic field for a dipole (+q,-q)

print "\n This file demonstrates"
print " -1- saving contour lines as a gnuplottable datablock"
print " -2- plotting a vector field on the same graph"
print " -3- manipulating columns using the '$1,$2' syntax."
print " the example is taken here from Physics is the display of equipotential"
print " lines and electrostatic field for a dipole (+q,-q)"
#
      r(x,y)=sqrt(x*x+y*y)
      v1(x,y)=  q1/(r((x-x0),y))
      v2(x,y)=  q2/(r((x+x0),y))
#
      vtot(x,y)=v1(x,y)+v2(x,y)
#
      e1x(x,y)= q1*(x-x0)/r(x-x0,y)**3
      e1y(x,y)= q1*(y)/r(x-x0,y)**3
      e2x(x,y)= q2*(x+x0)/r(x+x0,y)**3
      e2y(x,y)= q2*(y)/r(x+x0,y)**3
      etotx(x,y)=e1x(x,y)+e2x(x,y)
      etoty(x,y)=e1y(x,y)+e2y(x,y)
      enorm(x,y)=sqrt(etotx(x,y)*etotx(x,y)+etoty(x,y)*etoty(x,y))
      dx1(x,y)=coef*etotx(x,y)/enorm(x,y)
      dy1(x,y)=coef*etoty(x,y)/enorm(x,y)
      dx2(x,y)=coef*etotx(x,y)
      dy2(x,y)=coef*etoty(x,y)
#
      coef=.7
      x0=1.
      q1=1
      q2=-1
      xmin=-10.
      xmax=10.
      ymin=-10.
      ymax=10.
#
unset autoscale
set xr [xmin:xmax]
set yr [ymin:ymax]
set isosam 31,31
#set view 0, 0, 1, 1
set view map
unset surface
set contour base
set cntrparam order 4
set cntrparam linear
set cntrparam levels discrete -3,-2 ,-1 ,-0.5 ,-0.2 ,-0.1 ,-0.05 ,-0.02 ,0 ,0.02 ,0.05 ,0.1 ,0.2 ,0.5 ,1 ,2 ,3 
set cntrparam points 5
#
set label "-q" at -1,0 center
set label "+q" at  1,0 center
splot vtot(x,y) w l
print "Now create a in-memory datablock with equipotential lines"
