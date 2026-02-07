
_x1 = camera_get_view_x(view_camera[0]) + 20;
_y1 = camera_get_view_y(view_camera[0]) + 70;
_x2 = _x1 + 20;
_y2 = _y1 + 40

if (opened){
    draw_set_color(c_white);
    draw_rectangle(_x1, _y1, _x2, _y2, true);
}