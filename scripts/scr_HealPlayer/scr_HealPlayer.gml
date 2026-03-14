function scr_HealPlayer(_hp){
	global.PlayerHp += _hp;
	audio_play_sound(snd_heal_c, 99, false);
	global.PlayerHp = clamp(global.PlayerHp, 0, global.PlayerMaxHp);
}