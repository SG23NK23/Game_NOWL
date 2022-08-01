/// @description Setup Variables
#region //Custom Variables || Change these to customize enemy

e_health = 50;

e_speed = 4;
e_attack_speed = .25; //Desired Image Speed
e_range = 16; // Attack Range
e_target_range = 16; //mp_step Range | Keep this value low
e_rescan = 25 //How often to check for a new objective
e_opt_time = 45 //How often the grid updates - saves memory

moving_sprite = spr_ghoul_move; //Move sprite
attacking_sprite = spr_ghoul_attack; //Attack Sprite
attack_object = obj_enemy_attack; //Attack object

#endregion

#region //AI Variables

can_move = true; //Can the AI move?
alarm[0] = -1
move_state = 1 //Debug only
state = "moving"; // "moving", "attack" 
target = GG; //Start object
path = path_add(); //Create path 
debug = true;
#endregion