/// @description Insert description here
// You can write your code in this editor
if(global.rubCOUNT>1) return;
if(tumb = 1)
{
	if(Rclick == 1) 
	{
		global.rubCOUNT --
		global.rubPurple = 0
		image_index = 0; 
		Rclick = 0; 
	}
	else
	{
		global.rubCOUNT ++
		global.rubPurple = 1
		image_index = 1
		Rclick = 1	
	}
	
	//audio_play_sound(S_key, 1, false);
	
}
