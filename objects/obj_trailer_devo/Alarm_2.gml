//Here defines the behaviour of dialogue
_x = self.x + 100 
_y = self.y - 20

if (global.Manager.attackCreated = false){
	instance_create_depth(0, 0, 99, obj_attack_trailer);
	global.Manager.attackCreated = true;
}


if (!talked){
	
	if (event == 0){
		event = 0.5;
		Dialogue = CreateBubbleDialogue(_x, _y);
		Dialogue.Talker = "Devo";
		Dialogue.AddDialogue("after the last time we&met. things went down&pretty fast.");
		Dialogue.AddDialogue("honestly,&it felt hopeless.");
		
	}
	
	if (event == 1){
		event = 1.5;
		Dialogue = CreateBubbleDialogue(_x, _y);
		Dialogue.Talker = "Devo";
		Dialogue.AddDialogue("that being said,&[REDACTED] tried her&best to cheer&everyone up, but...");
		Dialogue.AddDialogue("one day,&she went missing.");
		Dialogue.AddDialogue("and when i found her...");
	}


}

else{
	global.Manager.state = BATTLE_STATE.BATTLE;
}

if (!instance_exists(Dialogue)){
	switch event {
		case 0.5:
		event = 1;
		talked = true;
		break;
		
		case 1.5:
		event = 2;
		talked = true;
		break;
	}
}