#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# """
# Created on Tue May 31 23:58:32 2022

# @author: denis
# """

set table $equipo2
replot
unset table

plot $equipo2 w l
print "Now create a x/y datablock for plotting with vectors "
print "and display vectors parallel to the electrostatic field"
