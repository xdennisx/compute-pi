reset
set title 'performance comparison'
set xlabel 'N'
set ylabel 'time(sec)'
set logscale x 2
set term png enhanced font 'Verdana,10'
set output 'runtime.png'
set datafile separator ","

plot [100:][0:] "result_clock_gettime.csv" using 1:2 smooth csplines lw 2 title 'baseline', \
'' using 1:4 smooth csplines lw 2 title 'openMP(2)', \
'' using 1:6 smooth csplines lw 2 title 'openMp(4)', \
'' using 1:8 smooth csplines lw 2 title 'AVX', \
'' using 1:10 smooth csplines lw 2 title 'AVX_unroll', \
'' using 1:12 smooth csplines lw 2 title 'Leibniz', \
'' using 1:14 smooth csplines lw 2 title 'Euler'

reset
set title 'error rate'
set xlabel 'N'
set logscale x 2
set term png enhanced font 'Verdana,10'
set output 'error_rate.png'
set datafile separator ","

plot [100:][0:] "result_clock_gettime.csv" using 1:3 smooth csplines lw 2 title 'baseline', \
'' using 1:5 smooth csplines lw 2 title 'openMP(2)', \
'' using 1:7 smooth csplines lw 2 title 'openMp(4)', \
'' using 1:9 smooth csplines lw 2 title 'AVX', \
'' using 1:11 smooth csplines lw 2 title 'AVX_unroll', \
'' using 1:13 smooth csplines lw 2 title 'Leibniz', \
'' using 1:15 smooth csplines lw 2 title 'Euler'
