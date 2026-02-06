//Here defines the behaviour before DIALOGUE
CheckIfIamKilled();

if (CheckIfEveryKilled() == false) {
	global.Manager.state = BATTLE_STATE.DIALOGUE;
}
	
