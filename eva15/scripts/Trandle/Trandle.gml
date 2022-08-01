// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Trandle(argument0,argument1,argument2,argument3,argument4,argument5,argument6)
{
	///draw_cone(x,y,direction,lenght,angle,vertices,outline)
var xx=argument0,yy=argument1,dir=argument2-(argument4/2),
lng=argument3,ang=argument4,steps=argument5;
var pr=pr_trianglefan;
if (argument6) {pr=pr_linestrip}
draw_primitive_begin(pr);
draw_vertex(xx,yy);
for(i=0; i<=steps; i++)
   {
       draw_vertex(xx+lengthdir_x(lng,dir+(ang*i/steps)),yy+lengthdir_y(lng,dir+(ang*i/steps)));
   }
if (argument6) {draw_vertex(xx,yy);}
draw_primitive_end();

}