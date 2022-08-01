/// @description Insert description here
// You can write your code in this editor
//if(global.dd2 = 1) {instance_destroy(Vid);}
var _type = async_load[? "type"];

if (_type == "video_start")
{
   _video = true;
}
else if (_type == "video_end")
{
    _video = false;
	//конец
    video_close();
	global.MENU_SOUND2 = audio_play_sound(S_desB,2,1)
	instance_destroy(Vid)
}
