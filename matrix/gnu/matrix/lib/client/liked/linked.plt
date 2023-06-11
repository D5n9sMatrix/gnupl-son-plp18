#!/usr/bin/gnuplot -persist
# -*- coding: utf-8 -*-
# """
# Created on Tue May 31 21:55:10 2022

# @author: denis
# """

# This is the simplest form of the command. It forces the x2 axis to have identically the same range, scale,
# and direction as the x axis. Commands set xrange, set auto x, etc will affect both the x and x2 axes.
# Commands set x2range, etc, will be ignored while the linkage is in effect.
set link x2 via x**2 inverse sqrt(x)
$sqrt_data << EOD
1 10 <S1>
2 20 <S2>
3 30 <S3>
4 40 <S4>
5 50 <S5>
6 60 <S6>
7 70 <S7>
8 80 <S8>
9 90 <S9>
EOD
$linear_data << EOD
10 100 <S1>
20 200 <S2>
30 300 <S3>
40 400 <S4>
50 500 <S5>
60 600 <S6>
70 700 <S7>
80 800 <S8>
90 900 <S9>
EOD
plot "sqrt_data" using 1:2 axes x2y1, "linear_data" using 1:2 axes x1y2

# match let go
set minus
A = -5
print "A = ",A
# printed string will contain a hyphen
print gprintf("A = %g",A)
# printed string will contain character U+2212
set label "V = -5"
# label will contain a hyphen
set label sprintf("V = %g",-5) # label will contain a hyphen
set label gprintf("V = %g",-5) # label will contain character U+2212


# start defines the starting point along the color wheel in radians. cycles defines how many color wheel cycles
# span the palette range. Larger values of saturation produce more saturated color; saturation > 1 may lead
# to clipping of the individual RGB components and to intensity becoming non-monotonic. The palette is also
# affected by set palette gamma. The default values are
set palette cubehelix start 0.5 cycles -1.5 saturation 1
set palette gamma 1.5

# File
# set palette file is basically a set palette defined (<gradient>) where <gradient> is read from a datafile.
# Either 4 columns (gray,R,G,B) or just three columns (R,G,B) have to be selected via the using data file
# modifier. In the three column case, the line number will be used as gray. The gray range is automatically
# rescaled to [0,1]. The file is read as a normal data file, so all datafile modifiers can be used. Please note,
# that R might actually be e.g. H if HSV color space is selected.
# As usual <filename> may be ’-’ which means that the data follow the command inline and are terminated
# by a single e on a line of its own.
# Use show palette gradient to display the gradient.
# Examples:
# Read in a palette of RGB triples each in range [0,255]:

# Equidistant rainbow (blue-green-yellow-red) palette:
$some_palette << EOD
0 0 1
0 1 0
1 1 0
1 0 0
EOD
plot ’$some_palette’ using ($1/255):($2/255):($3/255)