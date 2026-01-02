function scr_Flee(){
	var sound = snd_escaped;
	var _x = 60;
	var _y = 286 + 36 * global.UISelection;
	global.Enemy[0].ActionText = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].ActionText.CanAdvance = false;
	
	global.Enemy[0].ActionText.TextToDraw = choose(
	    "* Strategic retreating...",
	    "* Is not worth my time.",
		"* Not for now.",
		"* They cannot keep it long anyway.",
	)
	audio_stop_sound(global.BattleMusic);
	global.BattleMusic = noone;
	
	audio_play_sound(sound, 0, false); //flee sound
	instance_create_depth(_x, _y, -99, obj_SoulFlee);
	
	var _handler = instance_create_depth(0, 0, 99, obj_WinHandler);
	_handler.flee = true
	
	
}