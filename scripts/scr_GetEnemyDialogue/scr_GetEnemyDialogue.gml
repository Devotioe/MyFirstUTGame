function GetEnemyDialogue(){
	switch (global.encounterID){
		case 1: //TEST FIGHT
		if (obj_fighter_test.checked){
			return("* Flavor Text Test 02.");
		}
		return("* Flavor Text Test 01.");
		case 2:
		break;
		case 3:
		
		case 999:
		return("* ___ stands his ground.");
		
		default:
		return("* But nobody came.") // Failsafe
	}
}