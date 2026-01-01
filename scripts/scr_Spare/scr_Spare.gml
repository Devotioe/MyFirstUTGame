function scr_Spare(){
	global.Enemy[0].Dialogue = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].Dialogue.CanAdvance = true;
	
	if global.Enemy[global.EnemyRN].CanSpare == true{
		global.Enemy[0].Dialogue.TextToDraw = "* Spare Successful";
	}else{
		global.Enemy[0].Dialogue.TextToDraw = "* Spare Not Successful";
	}

}