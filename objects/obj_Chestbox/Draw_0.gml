draw_self()

var border_width = 5

var snd_move = snd_movemenu;
var snd_choose = snd_select;

var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);
var key_right = keyboard_check_pressed(vk_right);
var key_left = keyboard_check_pressed(vk_left);

var key_advance = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var key_quit = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);

var main_v_length = 450;
var main_h_length = 600;

var main_l_border = camera_get_view_x(view_camera[0]) + 20;
var main_t_border = camera_get_view_y(view_camera[0]) + 20;
var main_r_border = main_l_border + main_h_length;
var main_b_border = main_t_border + main_v_length;

if opened {
	draw_set_color(c_white);
	draw_rectangle(main_l_border, main_t_border, main_r_border, main_b_border, false);
	draw_set_color(c_black);
	draw_rectangle(main_l_border + border_width, main_t_border + border_width, main_r_border - border_width, main_b_border - border_width, false);
}

