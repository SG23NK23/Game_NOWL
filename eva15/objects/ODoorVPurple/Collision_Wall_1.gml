/// @description Insert description here
// You can write your code in this editor
if solid=1 exit
swinger=1
if abs(swingspeed)>3.5 exit
if y>other.y and other.x<x {swingspeed=3 exit}
if y>other.y and other.x>x {swingspeed=-3 exit}
if other.x<x+lengthdir_x(32,image_angle+270) swingspeed=3 else swingspeed=-3
