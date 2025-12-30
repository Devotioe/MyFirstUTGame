//set to fullscreen
if keyboard_check_pressed(vk_f4){
	if (window_get_fullscreen() == false){
		window_set_fullscreen(true);
		return;
	}
	if (window_get_fullscreen() == true){
		window_set_fullscreen(false);
	}
}

