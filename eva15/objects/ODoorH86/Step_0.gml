
if solid=1 or abs(swingspeed)>3.5 nothing=1 
else {
global.my_id=id
with EMY 
{
	if place_meeting(x,y,global.my_id) 
	{
	global.my_id.target=id
	with global.my_id 
	{
	if target.object_index=EMY nothing=1 
	else {
	swinger=2
	if abs(swingspeed)>3.5 exit

	if x>target.x and target.y<y {swingspeed=-7 exit}
	if x>target.x and target.y>y {swingspeed=7 exit}
	if target.y<y+lengthdir_y(32,image_angle) swingspeed=-7 else swingspeed=7
}
}
}
}
}


if abs(swingspeed)>0 {
image_angle+=swingspeed
if place_meeting(x,y,objFurniture) {
image_angle-=swingspeed
swingspeed*=-0.5
}
if image_angle<-135 {image_angle=-135 swingspeed=abs(swingspeed)}
if image_angle>135 {image_angle=135 swingspeed=-abs(swingspeed)}

if abs(swingspeed)<3.5 {
if image_angle>-6 and image_angle<6 {swingspeed=0 image_angle=0 exit}
}

if swingspeed>0.25 swingspeed-=0.25 else {
if swingspeed<0 swingspeed+=0.25 else {swinger=0 swingspeed=0}
}
}
