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
		
		CreateBubbleDialogue(_x, _y);
		Dialogue.AddDialogue("to be honest,&i've been wondering&why you did all this.");
		Dialogue.AddDialogue("i mean, what's your&ultimate goal here?");
		Dialogue.AddDialogue("it's pretty dramatic&if you were just&sending a message.");
		Dialogue.AddDialogue("what's the point&if no one's left&alive?");
		Dialogue.Talker = "Sans"
	}

}else{
	global.Manager.state = BATTLE_STATE.BATTLE;
}

if (!instance_exists(Dialogue)){
	switch event {
		case 0.5:
		event = 1;
		talked = true
		break;
	}
}