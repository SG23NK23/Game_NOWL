/// @description Insert description here
// You can write your code in this editor
if(!global.tr)
{
		global.sf = true;
		direction = angle;	
		sprite_index = FLASH
		speed = 10
		ps= part_system_create(); // создали систему частиц и сохраняем ее в переменной ps
		pt4=part_type_create();
		part_system_depth(ps,380)
		part_type_shape(pt4,pt_shape_smoke) // устанавливаем вид частиц
		part_type_color3(pt4,c_white,c_gray,c_black)
		part_type_size(pt4,0.1,0.5,0,0)
		part_type_life(pt4,1,10) /// время жизни частиц. min и max ( 40 и 50) Время считается в шагах игры
		part_type_alpha1(pt4,1) /// Так ей можно задать прозрачность равной (0.05)
		part_type_speed(pt4,0.01,0.03,0,0) // скорость min и max(0.2,2)  Дальше указываем приращение скорости(+0.3) и колебание(я поставил 0)
		part_type_direction(pt4,direction,direction,0,0)
		em=part_emitter_create(ps) // создаем генератор цастиц. Храним его в переменной (em), она понадобится в функциях ниже
		part_emitter_region(ps,em,x, x, y, y, ps_shape_rectangle,ps_distr_gaussian); // задаем область генерации формула такова (xmin,xmax,ymin,ymax).  Указваем  распределение частиц при их генерации (ps_shape_ellipse). Обозначаем область в которой будет создаваться частицы(ps_distr_gaussian)
		part_emitter_burst(ps,em,pt4,10)
		shooting_ready = 0
}
