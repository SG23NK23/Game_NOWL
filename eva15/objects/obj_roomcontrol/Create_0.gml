#region //Create and Update Grid

global.aigrid = mp_grid_create(0, 0, room_width / 32, room_height /32, 32, 32) 
//Set up Grid
mp_grid_add_instances(global.aigrid,Wall_1,1) // Add objects to avoid

#endregion

#region //AI Variables || Edit these in Creation Code

objective[0] = GG;
objective[1] = obj_diamond; //Add additional objectives for the AI to attack
objective[2] = obj_gem;

blockade_object = obj_blockade; // Set your blockade || Unavoidable object
instance_create_depth(room_height+250,y,1,objective[1])	
instance_create_depth(room_height+250,y,1,objective[2])	//Just to be safe I created other objects
instance_create_depth(room_height+250,y,1,blockade_object)	//To elimate errors

#endregion
