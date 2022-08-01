draw_self()
if distance_to_object(obj_player) < 16 {
	//draw_set_font(f_blockade)
	draw_text(obj_player.x,obj_player.y - obj_player.sprite_height,"F to Repair")
}