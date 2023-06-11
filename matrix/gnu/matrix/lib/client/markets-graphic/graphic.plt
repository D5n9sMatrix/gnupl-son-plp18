#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# """
# Created on Tue May 31 23:32:19 2022

# @author: denis
# """
# Equidistant rainbow (blue-green-yellow-red) palette:
$some_palette << EOD
0 0 1
0 1 0
1 1 0
1 0 0
EOD
plot ’$some_palette’ using ($1/255):($2/255):($3/255)
