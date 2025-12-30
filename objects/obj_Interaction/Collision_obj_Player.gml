var select_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));


//goes to the host's event
if select_key && !instance_exists(obj_TextElement){
	obj_Player.frozen = true;
	
	//This activate the according object's interaction event
	with (Host){
		event_user(0);
	}
}


