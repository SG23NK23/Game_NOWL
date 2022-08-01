/// @description Insert description here
// You can write your code in this editor
//if(path_exists(Path1))
//		path_start(Path1,4,path_action_restart,true)
e = 0
shooting_readyEMY = 1;
angleEmy = image_angle
target2 = GG;

#region //Custom Variables || Change these to customize enemy
emy_hp = 100;
e_speed = 4;
e_attack_speed = .25; //Desired Image Speed
e_target_range = 16; //mp_step Range | Keep this value low
e_opt_time = 45 //How often the grid updates - saves memory
#endregion

#region //AI Variables
can_move = true; //Can the AI move?
alarm[3] = -1
move_state = 1 //Debug only
state = "moving"; // "moving", "attack" 
target = GG; //Start object
path = path_add(); //Create path 
debug = true;
#endregion
