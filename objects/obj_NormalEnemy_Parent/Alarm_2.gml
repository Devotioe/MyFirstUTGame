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
		
		Dialogue = CreateBubbleDialogue(_x, _y);
		
		var dia = choose(
		"random 1_1",
		"random 1_2",
		"random 1_3",
		)
		
		Dialogue.AddDialogue(dia);
	}

	if (event == 1){
		event = 1.5;
		
		Dialogue = CreateBubbleDialogue(_x, _y);
		
		var dia = choose(
		"random 2_1",
		"random 2_2",
		"random 2_3",
		)
		Dialogue.AddDialogue(dia);
		
		dia = choose(
		"random 2_1",
		"random 2_2",
		"random 2_3",
		)
		Dialogue.AddDialogue(dia);
	}
	
}else{
	global.Manager.state = BATTLE_STATE.BATTLE;
}

if (!instance_exists(Dialogue)){
	switch event {
		case 0.5:
		event = 1;
		break;
		case 1.5:
		talked = true;
		event = 2
		break;
	}
}