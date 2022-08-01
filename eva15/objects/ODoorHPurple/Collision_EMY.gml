///// @description Insert description here
//// You can write your code in this editor
//if solid=1 exit
//if abs(swingspeed)>3.5 exit
//swinger=2

//if y>other.y and other.x<x {swingspeed=-8 exit}
//if y>other.y and other.x>x {swingspeed=8 exit}
//if other.x<x+lengthdir_x(32,image_angle+270) swingspeed=8 else swingspeed=-8
if(global.k_purple = 0)
{
	solid = 1
	GG.speed = 0
}
else
{
	solid = 0
if solid=1 exit
swinger=1
if abs(swingspeed)>3.5 exit

if x>other.x and other.y<y {swingspeed=-7 exit}
if x>other.x and other.y>y {swingspeed=7 exit}
if other.y<y+lengthdir_y(32,image_angle) swingspeed=-7 else swingspeed=7
}
