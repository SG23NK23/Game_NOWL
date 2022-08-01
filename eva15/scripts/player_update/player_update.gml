function player_update() {
	if state = "idle" {
		image_index = 0;	
	}

	if state = "moving" {
		image_speed = .5;	
	}

	if keyboard_check_pressed(vk_space) {
		var inst = instance_create_depth(x,y,1,obj_bullet)
		if image_xscale = 1 then inst.direction = 0
		if image_xscale = -1 then inst.direction = 180
		inst.speed = 4

	}


}
