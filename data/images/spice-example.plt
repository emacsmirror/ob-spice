set terminal X11
set title "*virtual ground test: opamp gain = 1000"
set xlabel "s"
set ylabel "V"
set grid
unset logscale x 
set xrange [0.000000e+00:5.000000e-02]
unset logscale y 
set yrange [-1.099830e-01:1.099830e-01]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'data/images/spice-example.data' using 1:2 with lines lw 1 title "v(in)" ,\
'data/images/spice-example.data' using 3:4 with lines lw 1 title "v(out)" ,\
'data/images/spice-example.data' using 5:6 with lines lw 1 title "v(inn)" 
set terminal push
set terminal png
set out 'data/images/spice-example.png'
replot
set term pop
replot
