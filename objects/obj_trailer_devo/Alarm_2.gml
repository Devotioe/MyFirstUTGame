//Here defines the behaviour of dialogue
_x = self.x + 100 
_y = self.y - 20

if (global.Manager.attackCreated = false){
	instance_create_depth(0, 0, 99, obj_atk_Parent);
	global.Manager.attackCreated = true;
}

if (!talked){
	
	if (event == 0){
		event = 0.5;
		
		CreateBubbleDialogue(_x, _y);
		Dialogue.AddDialogue("to be honest,&i've never thought&you would come&this far.");
		Dialogue.AddDialogue("well, but here we are.");
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