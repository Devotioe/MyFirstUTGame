if !instance_exists(_inst) && event == 0 {
	event = 1;
	_inst2 = instance_create_depth(15, 240, -9, obj_TextElement);
	_inst2.AddDialogue("@4* I'm putting you in the ground.");
	_inst2.CanAdvance = false;
	_inst2.CanSkip = false;
	_inst2.Silence = true;
}

if event == 1 && keyboard_check_pressed(ord("Z")){
	global.encounterID = 999;
	event = 2;
	alp = 0

}


if (alp < 1) && event == 2{
	draw_set_colour(c_white);
	draw_set_alpha(alp)
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1)
	alp += 0.005;
}
if (alp >= 1) && event == 2{
	instance_destroy(self);
	instance_destroy(obj_TextElement);
	room = room_battle;		
}
	