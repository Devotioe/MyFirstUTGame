//alarm 0
//destroy TargetField if exists
if instance_exists(obj_TargetField){
	obj_TargetField.destroyed = true;
	instance_destroy(obj_TargetBar);
}


//set everything to battle
//This will be triggered 

//BASCIALLY SWITCHING TURNS
if (MyHp > 0){ //if alive, set to battle phase
	scr_SetBattleBox()
	global.soul.visible = true;
	global.soul.x = 320;
	global.soul.y = 300;
	event_user(15) // check for dialogue
}

else{//enemy dies
	var allkilled = true;
	killed = true;
	global.ExpToEarn += EXP;
	
	array_push(global.EnemyGrave, self);
	
	for (var i = 0 ; i < array_length(global.Enemy) ; i ++){
		if (global.Enemy[i].killed == false){
			allkilled = false;
			break;
		}
	}//check if every enemy is killed
		
	if allkilled {
		var sound = snd_vaporized;
		audio_play_sound(sound, 1, false);
		ActionText = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
		ActionText.CanAdvance = false;
		ActionText.TextToDraw = "* You won!&* You earned "+ string(global.ExpToEarn) + " EXP and " + string(global.GoldToEarn) + " GOLD!";
		var handler = instance_create_depth(0, 0, 99, obj_WinHandler);
		handler.allkilled = true;
	
	}else {
		
	}
}





