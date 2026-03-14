obj_Player.frozen = false;
obj_Player_Camera.visible = false;

if now_rm == room_battle {
	if (global.OverworldMusic != noone){
		audio_resume_sound(global.OverworldMusic);
	}
	global.Enemy = -1;
}
if now_rm == room_start_menu {
	audio_stop_all();	
}

if (!is_undefined(mus_tar)) && now_rm != room_battle {
    scr_setMusic(mus_now, mus_tar);
}