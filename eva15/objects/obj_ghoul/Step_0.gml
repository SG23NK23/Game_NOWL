#region // State and Target
if alarm[1] = -1 {
	target = switch_target(target,e_range) //Change target
	alarm[1] = e_rescan
}

state = switch_state(e_range,target) //Change State
#endregion

#region //Moving

switch(state)
	{
	case "moving": //Moving 
		if instance_exists(target) and can_move = true {
			sprite_index = moving_sprite;
			image_speed = e_speed/2
			image_xscale = test_direction(direction)
			if distance_to_object(target) <= e_target_range & collision_line(x,y,target.x,target.y,Wall_1,true,true) 
				{ //If enemy is within range and has line of sight, use mp_step
					move_state = 0 //Debug only
					path_end();
					mp_potential_step_object(target.x,target.y,e_speed,Wall_1)
					
			} else {
				
				if alarm[3] == -1 {
						move_state = 1 //Debug only
						mp_grid_path(global.aigrid,path,x,y,target.x,target.y,true)
						path_start(path,e_speed,path_action_stop,true)
						alarm[3] = e_opt_time; //Reset the scan timer
						
						// To smooth out movement, the AI switches between grid and step movement
						// Mess around with e_opt_time and e_target_range to find desired middle ground
						// I advise you to keep e_target_range low when dealing with complex path-finding
				}
			}
		}
		break;
#endregion	
		
#region //Attacking	
	case "attacking": //Attacking
	if instance_exists(target) {
		path_end()
		speed = 0
		if can_move = true {
		sprite_index = attacking_sprite;
		image_speed = e_attack_speed;
		image_xscale = test_direction(point_direction(x,y,target.x,target.y))
			var inst = instance_create_depth(x,y,-1,attack_object); //Creates attack object
			inst.damage = 10;
			inst.direction = point_direction(x,y,target.x,target.y);
			inst.image_angle = direction
			inst.speed = 5;
			can_move = false;
		}
	}
	
		break;	
		
	}

#endregion

#region //Death

//if e_health <= 0 then instance_destroy(); //Currently disabled
#endregion


	
	
	
	
	
	
	
	