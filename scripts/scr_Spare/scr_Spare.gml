function scr_Spare(){ //spare once will spare all possible enemies
	var _canspare = false; 
	var allspared = true;
	var sound = snd_vaporized;
	var enemyCounts = array_length(global.Enemy);
	global.Enemy[0].ActionText = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].ActionText.CanAdvance = false;
	
	for (var i = 0 ; i < enemyCounts ; i ++){
		if (global.Enemy[i].CanSpare == true){
			_canspare = true;
		}
	}
	
	
	if _canspare == true{
		audio_play_sound(sound, 1, false);
		
		for (var i = 0 ; i < enemyCounts ; i ++){
			if (global.Enemy[i].CanSpare == true){
				global.Enemy[i].spared = true;
				global.Enemy[i].image_alpha = 0.5
				global.GoldToEarn += global.Enemy[i].GOLD;
			}
		}
		
		for (var i = 0 ; i < enemyCounts ; i ++){
			if (global.Enemy[i].spared == false){
				allspared = false;
				break;
			}
		}//check if every enemy is spared
		
		if allspared {
			global.Enemy[0].ActionText.TextToDraw = "* You won!&* You earned 0 EXP and " + string(global.GoldToEarn) + " GOLD!";
			var handler = instance_create_depth(0, 0, 99, obj_WinHandler);
			handler.allspared = true;
		}
		
		else{
			global.Enemy[0].ActionText.CanAdvance = true;
			global.Enemy[0].ReadyForDialogue = true;
			global.Enemy[0].ActionText.TextToDraw = "";
		}

	
	}else{
		global.Enemy[0].ActionText.CanAdvance = true;
		global.Enemy[0].ReadyForDialogue = true;
		global.Enemy[0].ActionText.TextToDraw = "";
	}

}