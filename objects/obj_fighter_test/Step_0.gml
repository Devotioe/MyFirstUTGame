
if instance_exists(ActionText){
	ReadyForDialogue = true;
}else{
	if ReadyForDialogue == true{
		ReadyForDialogue = false;
		alarm[0] = 1;
	}
}

if instance_exists(Dialogue){
	ReadyForBattle = true;
}else{
	if ReadyForBattle == true{
		ReadyForBattle = false;
		instance_create_depth(0,0,0,obj_BulletSpawner);
	}
}




if ShakeEffect > 0 {
	x = xstart + random_range(-ShakeEffect, ShakeEffect);
	ShakeEffect -= 1;
}


if killed {
	image_alpha -= 0.05;	
}





