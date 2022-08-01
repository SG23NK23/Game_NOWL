if instance_exists(target) and debug = true
{
draw_sprite_ext(target.sprite_index,0,x+10,y+10,.25,.25,0,c_white,1)
draw_text(x+15,y,string(state))
draw_text(x+15,y+15,string(move_state))
if(!collision_line(x,y,target.x,target.y,Wall_1,true,true))
{
	draw_line_color(x,y,target.x,target.y,c_blue,c_blue)
}else {
	draw_line_color(x,y,target.x,target.y,c_red,c_red)	
}
if move_state ==  0{
		draw_circle(x,y,e_target_range,true);
		draw_line(x,y,target.x,target.y)
	}else{ 
		draw_path(path,x,y,true);
		}
}
//All debug stuff
draw_self()