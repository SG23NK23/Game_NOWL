////function frame_test(argument0, argument1) 
//{
//	if other.image_index >= argument0 and other.image_index <= argument1 
//	{
//		return true;	
//	}
//}

function seperate_instance() 
{
	dir=point_direction(x,y,other.x,other.y);
	x=x+lengthdir_x(-.2,dir);
	y=y+lengthdir_y(-.2,dir);


}

function switch_state(argument0, argument1) 
{
	 //
	if distance_to_object(argument1) < argument0 or distance_to_object(obj_roomcontrol.blockade_object) < argument0 { 
			return "attacking"; //If the enemy is close to the objective, it will begin attacking
		} else { return "moving"; //If not, move
			}
}

function switch_target(argument0, argument1) 
{

	var tar = argument0; //Sets a default variable || Always the first set target
	var bar = instance_nearest(x,y,obj_roomcontrol.blockade_object); 
	var list = ds_priority_create(); //Create a priority list
	if distance_to_object(bar) < argument1 {
		tar = bar;		
		
	}else {
		for (var i = 0; i < array_length(obj_roomcontrol.objective); i++) { //Loops through all objectives
			ds_priority_add(list,obj_roomcontrol.objective[i].id,distance_to_object(obj_roomcontrol.objective[i])) //Adds the objects and distances | Compares them
		}
			tar = ds_priority_find_min(list) //Returns the closest objective
	}	

	return tar;
}

function test_direction(argument0) 
{
	if (argument0 >= 0 and argument0 <= 90) or (argument0 >= 270 and argument0 <= 360) {
		return 1;	
	}

	if (argument0 > 90 and argument0 < 270) {
		return -1;	
	}


}
