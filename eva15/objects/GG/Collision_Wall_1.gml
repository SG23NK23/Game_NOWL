/// @description Insert description here
// You can write your code in this editor
dir=point_direction(x,y,other.x,other.y)+180
for (i=0;i<32;i+=1) 
{
	if (not place_meeting(x+lengthdir_x(i,dir),y+lengthdir_y(i,dir),other)) 
	{
		x=x+lengthdir_x(i,dir) 
		y=y+lengthdir_y(i,dir) 
		exit
	}
}