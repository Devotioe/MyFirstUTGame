function scr_setMusic(musNow, musTar){
	if musNow != musTar { 
		audio_stop_sound(global.OverworldMusic)
		global.OverworldMusic = audio_play_sound(musTar, 1, true)
	}
}