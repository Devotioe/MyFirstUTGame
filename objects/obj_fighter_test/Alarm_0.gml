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
	killed = true
	
	//for (var i = 0 ; i < array_length(EcData.enemyID) ; i ++){
	//	if (global.Enemy[i].spared == false){
	//		allspared = false;
	//		break;
	//	}
	//}//check if every enemy is spared
		
	//	if allspared {
	//		global.Enemy[0].ActionText.TextToDraw = "* You won!&* You earned 0 EXP and " + string(global.GoldToEarn) + " GOLD!";
	//		audio_stop_sound(global.BattleMusic);
	//		global.BattleMusic = noone;
	//		var handler = instance_create_depth(0, 0, 99, obj_WinHandler);
	//		handler.allspared = true;
	//	}
	alarm[2] = 120; //end battle
}





