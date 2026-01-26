function CheckIfIamKilled(){
	if (MyHp > 0){ //if alive, set to battle phase
		//return false;
	}
	else{//enemy dies	
		killed = true;
		var sound = snd_vaporized;
		audio_play_sound(sound, 1, false);
		global.ExpToEarn += EXP;
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
		var _inst = instance_create_depth(global.Menu.box_basicshift, 270, -1, obj_TextElement);
		global.Menu.ActionText = _inst;
		_inst.CanAdvance = false;
		_inst.TextToDraw = "* You won!&* You earned "+ string(global.ExpToEarn) + " EXP and " + string(global.GoldToEarn) + " GOLD!";
		
		var handler = instance_create_depth(0, 0, 99, obj_WinHandler);
		handler.allkilled = true;
		return true;
	
	}else{
		global.Manager.state = BATTLE_STATE.DIALOGUE
		SetBattleBox();	
		return false;
	}
	
}