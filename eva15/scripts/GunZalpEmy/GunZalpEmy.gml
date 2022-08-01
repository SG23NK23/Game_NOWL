// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GunZalpEmy(x3,y3,angle)
{
ps= part_system_create(); // создали систему частиц и сохраняем ее в переменной ps

			pt3=part_type_create();
			part_system_depth(pt3,380)
			part_type_shape(pt3,pt_shape_spark) // устанавливаем вид частиц
			part_type_color_rgb(pt3,255,255,255,255,255,255)
			part_type_size(pt3,0.4,0.6,0,0)
			part_type_life(pt3,10,10) /// время жизни частиц. min и max ( 40 и 50) Время считается в шагах игры
			part_type_alpha1(pt3,1) /// Так ей можно задать прозрачность равной (0.05)
			part_type_speed(pt3,0.1,0.3,0,0) // скорость min и max(0.2,2)  Дальше указываем приращение скорости(+0.3) и колебание(я поставил 0)
			part_type_direction(pt3,angle,angle,0,0)
			em=part_emitter_create(ps) // создаем генератор цастиц. Храним его в переменной (em), она понадобится в функциях ниже
			part_emitter_region(ps,em,x3, x3, y3, y3, ps_shape_rectangle,ps_distr_gaussian); // задаем область генерации формула такова (xmin,xmax,ymin,ymax).  Указваем  распределение частиц при их генерации (ps_shape_ellipse). Обозначаем область в которой будет создаваться частицы(ps_distr_gaussian)
			part_emitter_burst(ps,em,pt3,5)

			pt1=part_type_create(); // создаем тип частиц, заключаем ее в переменную pt1, нам это понадобится в функциях ниже.
			part_system_depth(pt1,380)
			part_type_shape(pt1,pt_shape_smoke) // устанавливаем вид частиц
			part_type_size(pt1,0.4,0.6,0,0)
			part_type_color3(pt1,c_white,c_gray,c_black) // устанавливаем цвет частиц. В данном случае мешаем цвета синий с серым
			part_type_life(pt1,1,10) /// время жизни частиц. min и max ( 40 и 50) Время считается в шагах игры
			part_type_alpha1(pt1,0.5) /// Так ей можно задать прозрачность равной (0.05)
			part_type_speed(pt1,0.2,1,2,0) // скорость min и max(0.2,2)  Дальше указываем приращение скорости(+0.3) и колебание(я поставил 0)
			part_type_direction(pt1,angle,angle,0,0) // указываем направление в градусах по нам известной схеме min и max градусов
			em=part_emitter_create(ps) // создаем генератор цастиц. Храним его в переменной (em), она понадобится в функциях ниже
			part_emitter_region(ps,em,x3,x3, y3, y3,ps_shape_rectangle,ps_distr_gaussian); // задаем область генерации формула такова (xmin,xmax,ymin,ymax).  Указваем  распределение частиц при их генерации (ps_shape_ellipse). Обозначаем область в которой будет создаваться частицы(ps_distr_gaussian)
			part_emitter_burst(ps,em,pt1,25)

			pt2=part_type_create();
			part_system_depth(pt2,380)
			part_type_shape(pt2,pt_shape_smoke) // устанавливаем вид частиц
			part_type_color3(pt2,c_white,c_gray,c_black) // устанавливаем цвет частиц. В данном случае мешаем цвета синий с серым
			part_type_size(pt2,0.4,0.6,0,0)
			part_type_life(pt2,1,50) /// время жизни частиц. min и max ( 40 и 50) Время считается в шагах игры
			part_type_alpha1(pt2,0.05) /// Так ей можно задать прозрачность равной (0.05)
			part_type_speed(pt2,0.1,0.3,0,0) // скорость min и max(0.2,2)  Дальше указываем приращение скорости(+0.3) и колебание(я поставил 0)
			part_type_direction(pt2,angle,angle,0,0)
			em=part_emitter_create(ps) // создаем генератор цастиц. Храним его в переменной (em), она понадобится в функциях ниже
			part_emitter_region(ps,em,x3,x3, y3, y3,ps_shape_rectangle,ps_distr_gaussian); // задаем область генерации формула такова (xmin,xmax,ymin,ymax).  Указваем  распределение частиц при их генерации (ps_shape_ellipse). Обозначаем область в которой будет создаваться частицы(ps_distr_gaussian)
			part_emitter_burst(ps,em,pt2,5)
}