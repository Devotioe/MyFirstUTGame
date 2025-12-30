if instance_exists(obj_Menu){
	//show_debug_message("123")
}	


var debug = keyboard_check_pressed(vk_f8)

if debug { 
	with obj_Player{
		event_user(0) //starting battle
	}
}

