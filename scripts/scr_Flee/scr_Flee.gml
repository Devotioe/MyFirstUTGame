function scr_Flee(){
	var sound = snd_escaped;
	var _x = 60;
	var _y = 286 + 36 * global.UISelection;
	global.Enemy[0].Dialogue = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].Dialogue.CanAdvance = false;
	
	global.Enemy[0].Dialogue.TextToDraw = "* Escaped...";
	audio_play_sound(sound, 0, false);
	instance_create_depth(_x, _y, -99, obj_SoulFlee);
	global.Enemy[0].alarm[2] = 120; //This ends battle
}