//Here defines the behaviour of an emeny after taking damage.
CheckIfIamKilled();

if (CheckIfEveryKilled() == false) {
	alarm[2] = 1;
	global.Manager.state = BATTLE_STATE.DIALOGUE;
}
	
