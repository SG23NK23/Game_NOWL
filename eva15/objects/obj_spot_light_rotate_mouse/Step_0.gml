/// @desc Rotate
light[| eLight.X] = GG.x;
light[| eLight.Y] = GG.y;
light[| eLight.Direction] = point_direction(GG.x, GG.y, mouse_x, mouse_y);
light[| eLight.Range] = 450;

light[| eLight.Flags] |= eLightFlags.Dirty;
