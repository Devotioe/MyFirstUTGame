

if mode == 0 && moving || mode == 1 && !moving{
	if (global.invframes <= 0){
		if discon = false{
			instance_destroy(self);
		}
		global.PlayerHp -= dmg; //deal damage before ending
		if global.PlayerHp <= 0{
			game_end();
		}
		audio_play_sound(snd_hurt1, 20, false);
		global.invframes += 90;
	}
}
