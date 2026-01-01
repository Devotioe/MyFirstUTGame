function scr_Spare(){
	global.Enemy[0].SpareText = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].SpareText.CanAdvance = true;
	
	if global.Enemy[global.EnemyRN].CanSpare == true{
		global.Enemy[0].SpareText.TextToDraw = "* Spare Successful";
		global.Enemy[0].alarm[2] = 120; //This ends battle
	}else{
		global.Enemy[0].SpareText.TextToDraw = "* Spare Not Successful";
	}

}