if keyboard_check_pressed(ord("Z")){
	instance_create_depth(0,0, -9, obj_trailer_opening)	
	instance_destroy(self);
}