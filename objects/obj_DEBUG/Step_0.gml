if instance_exists(obj_Menu){
	//show_debug_message("123")
}	


var debug = keyboard_check_pressed(vk_f8)

if debug {
	if room == room_beginning {
		global.encounterID = 1;
	}else if room == room_hallway_0{
		global.encounterID = 2;
	}
	
	with obj_Player{
		event_user(0) //starting battle
	}
}


if keyboard_check_pressed(vk_f10){
	global.ItemData[$ "1"].Function();
}

//show_debug_message(global.Item)