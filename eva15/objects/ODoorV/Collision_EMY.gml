if solid=1 exit
if abs(swingspeed)>3.5 exit
swinger=2
if y>other.y and other.x<x {swingspeed=8 exit}
if y>other.y and other.x>x {swingspeed=-8 exit}
if other.x<x+lengthdir_x(32,image_angle+270) swingspeed=8 else swingspeed=-8
