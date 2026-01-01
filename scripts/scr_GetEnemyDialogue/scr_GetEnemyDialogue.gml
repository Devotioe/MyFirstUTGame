function GetEnemyDialogue(){
	switch (global.encounterID){
		case 1: //TEST FIGHT
		if (obj_fighter_test.checked){
			return("* Did you seriously tried to&  check the guy?");
		}
		return("* The Roaring Knight appeared.");
		case 2:
		break;
		case 3:
		default:
		return("* But nobody came.") // Failsafe
	}
}