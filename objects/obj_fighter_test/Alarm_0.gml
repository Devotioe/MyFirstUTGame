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
	alarm[2] = 120; //end battle
}





