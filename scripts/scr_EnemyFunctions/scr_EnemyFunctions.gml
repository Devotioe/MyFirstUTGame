function CheckIfIamKilled(){
	if (MyHp > 0){
		//return false;
	}
	else{//enemy dies	
		killed = true;
		var sound = snd_vaporized;
		audio_play_sound(sound, 1, false);
		global.ExpToEarn += EXP;
		global.GoldToEarn += GOLD;
		array_push(global.EnemyGrave, self); //push to grave for later deletion	
		//return true;
	}
}

function CheckIfEveryKilled(){
	var allkilled = true;
	
	for (var i = 0 ; i < array_length(global.Enemy) ; i ++){
		if (global.Enemy[i].killed == false){
			allkilled = false;
			break;
		}
	}//check if every enemy is killed
	
	if allkilled {
		global.Menu.ActionText = CreateActionText(); 
		
		var _inst = global.Menu.ActionText;
		_inst.CanAdvance = false;
		_inst.AddDialogue("* You won!&* You earned "+ string(global.ExpToEarn) + " EXP and " + string(global.GoldToEarn) + " GOLD!");
		
		var handler = instance_create_depth(0, 0, 99, obj_WinHandler);
		handler.allkilled = true;
		return true;
	
	}else{	
		return false;
	}
	
}