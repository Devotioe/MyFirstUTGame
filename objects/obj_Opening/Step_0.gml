if (alp >= 1) && event == 2{
	instance_destroy(obj_TextElement);
	room = room_battle;		
	//audio_sound_set_track_position(music, 58);
	instance_destroy(self);
}
