/// @arg "UP"
/// @arg "DOWN"
/// @arg "LEFT"
/// @arg "RIGHT"
/// @arg SPEED
function player_move(argument0, argument1, argument2, argument3, argument4) 
{
	
	if keyboard_check(ord(argument0)) 
	and 
	!place_meeting(x,y - argument4,Wall_1) {y-= argument4;}
	
	if keyboard_check(ord(argument1))
	and 
	!place_meeting(x,y + argument4,Wall_1) {y+= argument4;}

	if keyboard_check(ord(argument2)) 
	and 
	!place_meeting(x - argument4,y,Wall_1) {x-= argument4;}
		
	if keyboard_check(ord(argument3)) 
	and 
	!place_meeting(x + argument4,y,Wall_1) {x+= argument4;}
	
	
}
