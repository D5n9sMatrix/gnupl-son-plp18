# welcome gnupl-son
this graphic platform effect images
```gnuplot
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# """
# Created on Wed Jun  1 00:08:52 2022

# @author: denis
# """
set dummy t
set autoscale x
set yrange [-1.5:1.5]
set trange [0.0001:10*pi]
plot sin(t)/t,cos(t)/t
```


