/// @description Insert description here
// You can write your code in this editor
	//rest
	//global.sd = 0;
	audio_play_sound(S_death,1,0)
	room_restart()
	//event_perform(ev_cleanup,0)
	//event_perform(ev_room_end,0)
	//room = Lvl2
	//global.rm = room_add();
	//room_assign(global.rm, Lvl2);
	//room_instance_clear(Lvl2);
	//room = global.rm
	
	if (audio_is_playing(global.MENU_SOUND)) 
	{
		audio_stop_sound(global.MENU_SOUND);
	}
