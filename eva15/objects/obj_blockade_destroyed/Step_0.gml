if distance_to_object(obj_player) < 16 {
	if keyboard_check_pressed(ord("F")) {
		var int = instance_create_depth(x,y,1,obj_blockade)
		int.b_health = 10
		int.image_index = 0
		instance_destroy();
	}
	
}