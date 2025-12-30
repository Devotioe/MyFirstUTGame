function scr_spareAndFlee(){
	global.Enemy[0].Dialogue = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_ActionTextElement);
	global.Enemy[0].Dialogue.CanAdvance = true;
	
	if global.UISelection == 0{ //spare
		for ( i = 0 ; i < array_length(global.Enemy) ; i ++){	
			if global.Enemy[i].CanSpare == true{
				global.Enemy[0].Dialogue.TextToDraw = "* Spare successful";
			}else{
				global.Enemy[0].Dialogue.TextToDraw = "* Spare successful";
			}
		}
		
	}else{
		global.Enemy[0].Dialogue.TextToDraw = "* Test 2";
	}
}