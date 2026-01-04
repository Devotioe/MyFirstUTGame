function scr_AllEnemyReadyForBattle(){
	for (var i = 0 ; i < array_length(global.Enemy) ; i ++){
		global.Enemy[i].ReadyForBattle = true;
	}
}