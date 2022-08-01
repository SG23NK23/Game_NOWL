/// @description Insert description here
// You can write your code in this editor

ps= part_system_create(); // создали систему частиц и сохраняем ее в переменной ps
pt3=part_type_create();
part_system_depth(pt3,-1)
part_type_shape(pt3,pt_shape_pixel) // устанавливаем вид частиц
part_type_color_rgb(pt3,255,255,255,255,255,255)
part_type_life(pt3,10,10) /// время жизни частиц. min и max ( 40 и 50) Время считается в шагах игры
part_type_alpha1(pt3,1) /// Так ей можно задать прозрачность равной (0.05)
part_type_speed(pt3,0.1,0.3,0,0) // скорость min и max(0.2,2)  Дальше указываем приращение скорости(+0.3) и колебание(я поставил 0)
part_type_direction(pt3,direction,direction,0,0)
em=part_emitter_create(ps) // создаем генератор цастиц. Храним его в переменной (em), она понадобится в функциях ниже
part_emitter_region(ps,em,x, x, y, y, ps_shape_rectangle,ps_distr_gaussian);
part_emitter_burst(ps,em,pt3,50)