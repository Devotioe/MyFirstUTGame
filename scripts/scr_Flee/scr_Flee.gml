function scr_Flee(){
	var sound = snd_escaped;
	var _x = 60;
	var _y = 286 + 36 * global.UISelection;
	var _inst = instance_create_depth(global.Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Menu.ActionText = _inst;
	
	_inst.CanAdvance = false;
	
	_inst.TextToDraw = choose(
	    "* Strategic retreating...",
	    "* Is not worth my time.",
		"* Not for now.",
		"* They cannot keep it long anyway.",
	)
	
	audio_play_sound(sound, 0, false); //flee sound
	instance_create_depth(_x, _y, -99, obj_SoulFlee);
	
	var _handler = instance_create_depth(0, 0, 99, obj_WinHandler);
	_handler.flee = true
}