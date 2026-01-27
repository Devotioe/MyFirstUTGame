switch state {
	
	case BATTLE_STATE.ACTION:
	if !instance_exists(global.Menu.ActionText){
		state = BATTLE_STATE.DIALOGUE;
	}
	break;

	case BATTLE_STATE.DIALOGUE:
	
	SetBattleBox();
	_x = global.Enemy[0].x + 100 
	_y = global.Enemy[0].y - 20
	
	if event == 0 {
		CreateBubbleDialogue(_x, _y);
		event = 0.5
		Dialogue.AddDialogue("Test 1")
		Dialogue.AddDialogue("Test 2")
	}
	
	if event == 0.5 {
		if !instance_exists(Dialogue){
			state = BATTLE_STATE.BATTLE
			instance_create_depth(0,0,99,obbj_atk_Test_1)
		}
	}
	//var ready = true;
	//for (var i = 0 ; i < array_length(global.Enemy) ; i ++){
	//	if instance_exists(global.Enemy[i].Dialogue){
	//		ready = false;
	//	}
	//}
	//if ready {
	//	state = BATTLE_STATE.DIALOGUE;	
	//}
	break;
	
	case BATTLE_STATE.BATTLE:
	
		if !instance_exists(obj_atk_Parent){
			state = BATTLE_STATE.PLAYER
			instance_create_depth(0,0,99,obj_atk_Test_1)
			scr_SetDialogueBox()
			global.BattleMenu = MENU.SELECTION
			global.UISelection = global.Menu.BelowUIReference;
			global.soul.visible = false;
			global.Menu.PlayerDialogue.TextLength = 0;
			global.Menu.PlayerDialogue.IsWriting = true;
		}
		
	break;
}