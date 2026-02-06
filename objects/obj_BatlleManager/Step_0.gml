switch state {
	
	case BATTLE_STATE.ACTION:
	
	if !instance_exists(global.Menu.ActionText){
		global.Enemy[0].alarm[0] = 1;
	}
	break;

	case BATTLE_STATE.DIALOGUE:
	global.Enemy[global.EnemyRN].alarm[2] = 1;
	break;
	
	
	case BATTLE_STATE.BATTLE:
	if !instance_exists(obj_atk_Parent){
		StateToPlayer()
	}
	break;
	
}