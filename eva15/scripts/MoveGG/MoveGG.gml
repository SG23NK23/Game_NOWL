// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveGG()
{
if(!keyboard_check(vk_shift))
{
	if(keyboard_check(ord("W"))) 
	{
		y -= 3.5;
	}
	if (keyboard_check(ord("D"))) 
	{
		x += 3.5; 	
	}
	if(keyboard_check(ord("S"))) 
	{
		y += 3.5; 	
	}
	if (keyboard_check(ord("A"))) 
	{
		x -= 3.5; 
	}
}
}