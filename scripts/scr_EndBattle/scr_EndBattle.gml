function scr_EndBattle(){
	audio_stop_sound(global.BattleMusic);
	global.BattleMusic = noone;
	global.PlayerGold += global.GoldToEarn;
	global.PlayerExp += global.ExpToEarn;
	global.GoldToEarn = 0;
	global.ExpToEarn = 0;
}