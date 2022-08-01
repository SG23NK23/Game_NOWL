if b_health = 40 then image_index = 0
if b_health = 30 then image_index = 1
if b_health = 20 then image_index = 2
if b_health = 10 then image_index = 3
if b_health <= 0 {
	instance_create_depth(x,y,1,obj_blockade_destroyed);
	instance_destroy();
}

if distance_to_object(obj_player) < 16 {
	if keyboard_check_pressed(ord("F")) {
		if b_health <= 100 {
		b_health += 10	
		}
	}
	
}

if b_health >= 100 then b_health = 100