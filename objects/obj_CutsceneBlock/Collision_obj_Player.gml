if (scr_GetCutsceneConditionValue(Cutscene_ID) == false){
	instance_create_depth(0, 0, 9, Cutscene);
	obj_Player.frozen = true;
	scr_CutsceneConditionChange(Cutscene_ID, true); 
	//This set the according Cutscene ID data to true
	//According data be set to true
	//So it won't be triggered again
}

instance_destroy(self)

