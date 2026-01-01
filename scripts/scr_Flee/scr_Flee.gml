function scr_Flee(){
	global.Enemy[0].Dialogue = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].Dialogue.CanAdvance = true;
	
	global.Enemy[0].Dialogue.TextToDraw = "* I'm outta here.";
	
}