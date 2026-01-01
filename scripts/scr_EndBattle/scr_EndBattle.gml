function scr_EndBattle(){
	audio_pause_all()
	room_goto(global.CurrentRoom);
	obj_Player.x = obj_Player.Prev_X;
	obj_Player.y = obj_Player.Prev_Y;
	obj_Player.visible = true;
	obj_Player.frozen = false;
}