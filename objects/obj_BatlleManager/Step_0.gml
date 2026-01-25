switch state {
	case BATTLE_STATE.ACTION:
	if !instance_exists(global.Menu.ActionText){
		state = BATTLE_STATE.DIALOGUE;
	}
	break;
	
	case BATTLE_STATE.ATTACK:
	
	break;
	case BATTLE_STATE.DIALOGUE:
	
	var ready = true;
	for (var i = 0 ; i < array_length(global.Enemy) ; i ++){
		if instance_exists(global.Enemy[i].Dialogue){
			ready = false;
		}
	}
	if ready {
		state = BATTLE_STATE.DIALOGUE;	
	}
	break;
	case BATTLE_STATE.BATTLE:
	
	break;
}