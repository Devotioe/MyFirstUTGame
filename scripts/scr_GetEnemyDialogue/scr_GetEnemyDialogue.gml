function GetEnemyDialogue(){
	var txt;
	
	switch (global.encounterID){
		case 1: //TEST FIGHT
		if (obj_fighter_test.checked){
			txt = "* Flavor Text Test 02.";
		}
		txt = "* Flavor Text Test 01.";
		case 2:
		break;
		case 3:
		
		break;
		case 999:
		txt = "* [REDACTED] stands his ground.";
		break;
		
		case 1000:
		txt = "* He is breathing steadily.";
		break;
		
		default:
		txt = "* But nobody came." // Failsafe
	}
	
	return txt;
}