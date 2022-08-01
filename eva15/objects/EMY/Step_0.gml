//x2 = EMY.id.x+lengthdir_x(27.20,EMY.angleEmy-17.10);
//y2 = EMY.id.y+lengthdir_y(27.20,EMY.angleEmy-17.10);	
//var x3 = EMY.x+lengthdir_x(55.84,EMY.direction-10.62);
//var y3 = EMY.y+lengthdir_y(55.84,EMY.direction-10.62);
if(emy_hp <= 0)
instance_destroy()
mp_potential_settings(90, 10, 15, 1)

var player_go_to = instance_nearest(x,y,GG); //ближ чел
var player_x = (player_go_to.x);      //div 32) *32+16;
var player_y = (player_go_to.y);     //div 32) *32+16;

var fov_range = 360;
var seen = false;
var target = -1;

var dir = point_direction(x,y,player_x,player_y);
target = collision_line(x,y,x+lengthdir_x(fov_range,dir),
y+lengthdir_y(fov_range,dir),player_go_to,true,true);



if(collision_circle(x,y,100,GG,1,2) && !collision_line(x, y, GG.x, GG.y, Wall_1, 0, 0))
	seen = true;
else
{
	if instance_exists (target) 
	&& distance_to_point(player_x,player_y) < fov_range 
	{
		if instance_exists(GG)
		{
			if (!collision_line(x, y, GG.x, GG.y, Wall_1, 0, 0)) 
			{
				if (point_distance(x, y, GG.x, GG.y) > 1) 
				{	
					if not collision_line (x,y,target.x,target.y,Wall_1,true,true) 
					{
						var directionToTarget = point_direction (x, y,player_x,player_y);
						var angleToTarget = angle_difference (directionToTarget, angleEmy);
						if (abs (angleToTarget) < 45)       		
							seen = true; 		

					}
				}
			}
		}
	} 
}
if seen = true 
{
	angleEmy = point_direction(x, y, GG.x, GG.y);
	e = 1
	alarm[1] = room_speed*20
	if (point_distance(x, y, GG.x, GG.y) > 1) 
		{	
			mp_potential_step(GG.x, GG.y, 4, 1);

			if (shooting_readyEMY) 
			{
				audio_play_sound(S_emygum, 1, false);
				GunZalpEmy(x,y,angleEmy)
				var obj;
				obj = instance_nearest(x, y, GG); 
				if obj != noone 
				{
					var bull;
					bull = instance_create_depth(x, y, -10, BT2); 
					with (bull) move_towards_point(obj.x, obj.y, 10);
				}
				alarm[0] = room_speed*0.2;
				shooting_readyEMY = 0;
			}
			
		}	
}
else 
{
	if(e = 1)
	{
		angleEmy = point_direction(x, y, GG.x, GG.y);
		if instance_exists(target2)
		{
			if distance_to_object(target2) <= 16 
			&& collision_line(x,y,target2.x,target2.y,Wall_1,true,true) 		
			{ 
				path_end();
				mp_potential_step_object(target2.x,target2.y,4,Wall_1)	
			}
			else 
			{
				if alarm[3] == -1 
				{	
					mp_grid_path(global.aigrid,path,x,y,target2.x,target2.y,true)
					path_start(path,4,path_action_stop,true)
					alarm[3] = 45;
				}
			}
		}
		
	}
	
}
