// Inherit the parent event
event_inherited();
var quit_key = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);

if (opened){
	obj_Player.frozen = true;
	if (quit_key){
		depth = -y;
		opened = false;
		obj_Player.frozen = false;
	}
}

