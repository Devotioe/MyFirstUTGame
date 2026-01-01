function scr_spareAndFlee(){
	global.Enemy[0].Dialogue = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].Dialogue.CanAdvance = true;
	
	if global.UISelection == 0{ //spare
		for ( i = 0 ; i < array_length(global.Enemy) ; i ++){	
			if global.Enemy[i].CanSpare == true{
				global.Enemy[0].Dialogue.TextToDraw = "* Spare Successful";
			}else{
				global.Enemy[0].Dialogue.TextToDraw = "* Spare Not Successful";
			}
		}
		
	}else{ //Flee
		global.Enemy[0].Dialogue.TextToDraw = "* I'm outta here";
	}
}