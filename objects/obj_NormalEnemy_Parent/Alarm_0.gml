//Here defines the behaviour of an emeny after taking damage.

CheckIfIamKilled();

if (CheckIfEveryKilled() == false) {
	global.Manager.state = BATTLE_STATE.OPPONENT;	
}
	
