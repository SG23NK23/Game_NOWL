if(global.k_dog = 0)
{
	solid = 1
	GG.speed = 0
	//with (other) instance_destroy()
}
else
{
	solid = 0
if solid=1 exit
swinger=1
if abs(swingspeed)>3.5 exit
if y>other.y and other.x<x {swingspeed=7 exit}
if y>other.y and other.x>x {swingspeed=-7  exit}
if other.x<x+lengthdir_x(32,image_angle+270) swingspeed=7  else swingspeed=-7
}
