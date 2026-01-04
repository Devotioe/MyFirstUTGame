function scr_AllEnemyReadyForDialogue(){
	for (var i = 0 ; i < array_length(global.Enemy) ; i ++){
		global.Enemy[i].ReadyForDialogue = true;
	}
}