
//destroy TargetField if exists
if instance_exists(obj_TargetField){
	obj_TargetField.destroyed = true;
	instance_destroy(obj_TargetBar);
}


//set everything to battle
if (MyHp > 0){ //if alive, set to battle phase
	
	
	
	scr_SetBattleBox()
	obj_soul.visible = true;
	obj_soul.x = 320;
	obj_soul.y = 300;
	event_user(15) // check for dialogue
	
}
else{//enemy dies
	alarm[2] = 120; //kill the monster
}





