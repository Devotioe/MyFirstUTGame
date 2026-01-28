function StateToBattle(){
	global.Manager.state = BATTLE_STATE.BATTLE
	SetBattleBox()
	global.BattleMenu = MENU.HIDE
	global.UISelection = -1;
	global.soul.visible = true;
	global.soul.x = 320;
	global.soul.y = 315;
}

function StateToPlayer(){
	global.Manager.state = BATTLE_STATE.PLAYER
	SetDialogueBox()
	global.BattleMenu = MENU.SELECTION
	global.UISelection = global.Menu.BelowUIReference;
	global.soul.visible = false;
	global.Menu.PlayerDialogue.TextLength = 0;
	global.Menu.PlayerDialogue.IsWriting = true;
}

