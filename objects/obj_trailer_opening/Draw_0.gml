if !instance_exists(_inst) && event == 0 {
	event = 1;
	_inst2 = instance_create_depth(15, 240, -9, obj_TextElement);
	_inst2.AddDialogue("@2* This ends now.");
	_inst2.Silence = true;
	_inst2.Talker = "Devo";
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
	
	if !played{
		played = true;
		//audio_play_sound(mus_cymbal,1,false);
	}
}
