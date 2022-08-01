/// @description Insert description here
// You can write your code in this editor
video_draw()
if (_video == true)
{
	var res = video_draw();

	var m_x = camera_get_view_x(view_camera[0]);
	var m_y = camera_get_view_y(view_camera[0]);
	var m_w = camera_get_view_width(view_camera[0]);
	var m_h = camera_get_view_height(view_camera[0]);

	if (res[0] == 0)
	{
		draw_surface_stretched(res[1],m_x,m_y,m_w+600,m_h+400);	
	}
}
