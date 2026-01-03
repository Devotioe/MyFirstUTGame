function scr_Spare(){
	
	var allspared = true;
	var sound = snd_vaporized;
	EcData = scr_searchEcounterData();
	_Enemy = global.Enemy[global.EnemyRN]
	global.Enemy[0].ActionText = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].ActionText.CanAdvance = false;
	
	if _Enemy.CanSpare == true{
		audio_play_sound(sound, 1, false);
		_Enemy.image_alpha = 0.5
		_Enemy.spared = true;
		global.GoldToEarn += _Enemy.GOLD;
		
		for (var i = 0 ; i < array_length(EcData.enemyID) ; i ++){
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
			global.Enemy[0].ActionText.TextToDraw = "* You spared " + _Enemy.MyName + "!";
		}

	
	}else{
		global.Enemy[0].ActionText.CanAdvance = true;
		global.Enemy[0].ActionText.TextToDraw = "* You spared " + _Enemy.MyName + "!";
		global.Enemy[0].ActionText.TextInQueue[0] = "* But its name isn't yellow!";
	}

}