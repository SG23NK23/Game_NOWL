var h = ((d_health/d_max_health) * 100)
draw_sprite_ext(spr_diamond,0,x,y,1,1,0,c_blue,1)

draw_healthbar(x-25,y-30,x+25,y-27,h,c_black,c_red,c_green,0,true,true)