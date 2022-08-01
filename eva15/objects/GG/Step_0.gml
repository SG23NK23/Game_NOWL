/// @description Insert description here
// You can write your code in this editor
//image_angle = point_direction(x,y,mouse_x,mouse_y);
angle = point_direction(x, y, mouse_x, mouse_y);

var x2 = GG.x+lengthdir_x(27.20,GG.angle-17.10);
var y2 = GG.y+lengthdir_y(27.20,GG.angle-17.10);

var x3 = GG.x+lengthdir_x(46.69,GG.angle-9.87);
var y3 = GG.y+lengthdir_y(46.69,GG.angle-9.87);




if(p_health<=0)
	instance_destroy()

player_move("W","S","A","D",4)
	
	if image_speed=0 
	{
		image_index+=0.15
		r+=0.1
	}

 
if(!global.tr)
{
	if(instance_exists(obj_light_demo2)) 
			instance_destroy(obj_light_demo2)	
		
	if(global.sf = false)
	{
		if(ARMOR<=0)
		{	
			sprite_index = shotgunClean	
			return;
		}	
		
		if(mouse_check_button(mb_left)) //выстрел
		{
			if (shooting_ready) // Если игрок готов стрелять
				{
					audio_play_sound(S_reload, 1, false);
					audio_play_sound(S_shot, 1, false);	
					ARMOR-=2;
					GunZalp(x3,y3,angle)

					for (var i = 0; i < 20; i++) 
					{
						var temp = instance_create_depth
						(
							x2, 
							y2, 1, BT
						);
						var temp2 = instance_create_depth
						(
							x2, 
							y2, 1, obj_light_demo2
						);
						with (temp2) direction = GG.angle;
						with (temp)
						{ 
							speed = random_range(20,30);
							direction = GG.angle+random_range(-10,10);		
						}
					}


						
				}
			
			sprite_index = shotgunReloud
			shooting_ready = 0; // Указываем, что игрок более не может стрелять	
		}		
	}
}
else sprite_index = tranquility

//part_emitter_stream(ps,em,pt1,-6); 
// Это что то типа "Шанса" значение (-6) 
//показывает, что частицы будут создаваться в среднем раз в 6 шагов
	
