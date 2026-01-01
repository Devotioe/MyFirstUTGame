function scr_Spare(){
	
	var allspared = true;
	
	EcData = scr_searchEcounterData();
	_Enemy = global.Enemy[global.EnemyRN]
	global.Enemy[0].ActionText = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].ActionText.CanAdvance = true;
	
	if _Enemy.CanSpare == true{
		global.Enemy[0].ActionText.TextToDraw = "* You spared " + _Enemy.MyName + "!";
		_Enemy.spared = true;
		for (var i = 0 ; i < array_length(EcData.enemyID) ; i ++){
			if (global.Enemy[i].spared == false){
				allspared = false;
				break;
			}
		}
		if allspared {
			global.Enemy[0].ActionText.CanAdvance = false;
			global.Enemy[0].alarm[2] = 150; //ends battle
		}
	}else{
		global.Enemy[0].ActionText.TextToDraw = "* You spared " + _Enemy.MyName + "!";
		global.Enemy[0].ActionText.TextInQueue[0] = "* But its name isn't yellow!";
	}

}