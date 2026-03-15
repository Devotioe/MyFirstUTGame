//Here defines the behaviour of dialogue
_x = self.x + 100 
_y = self.y - 20

if (global.Manager.attackCreated = false){
	instance_create_depth(0, 0, 99, obj_trailer2_attack);
	global.Manager.attackCreated = true;
}


if (!talked){
	
	if (hittry == 1){
		Dialogue = CreateBubbleDialogue(_x, _y);
		Dialogue.Talker = "Devo";
		Dialogue.AddDialogue("woah, you really want me&dead, don'tcha?");
		Dialogue.AddDialogue("hey, that's fine.&i don't blame ya.");
		Dialogue.AddDialogue("someone's gotta be the&villain in someone&else's story, right?");
		
	}
	
	if (hittry == 2){
		Dialogue = CreateBubbleDialogue(_x, _y);
		Dialogue.Talker = "Devo";
		Dialogue.AddDialogue("thanks to you.&now people are more&united than ever.");
		Dialogue.AddDialogue("'cause someone out there&is acting deranged.");
	}
	
	if (hittry == 3){
		Dialogue = CreateBubbleDialogue(_x, _y);
		Dialogue.Talker = "Devo";
		Dialogue.AddDialogue("i'm not even supposed to&be here, y'know.");
		Dialogue.AddDialogue("fighting isn't my job.");
		Dialogue.AddDialogue("but since most fighting&units ended up&as lifeless corpses...");
		Dialogue.AddDialogue("i gotta take this shift.");
	}
	
	talked = true;

}else if (talked && !instance_exists(Dialogue)){
	global.Manager.state = BATTLE_STATE.BATTLE;
}

//if (!instance_exists(Dialogue)){
//	switch event {
//		case 0.5:
//		event = 1;
//		talked = true;
//		break;
		
//		case 1.5:
//		event = 2;
//		talked = true;
//		break;
//	}
//}