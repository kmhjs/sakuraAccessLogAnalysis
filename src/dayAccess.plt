set terminal png
set output './image/dayAccess.png'

set boxwidth 0.5
set xtics rotate by -90
set style fill solid 0.3 border linecolor rgb "black"
set style histogram clustered
set title "Access status"
set xlabel "Time(t)"
set ylabel "#Access"
plot "./file" using 1:xtic(2) with histogram
