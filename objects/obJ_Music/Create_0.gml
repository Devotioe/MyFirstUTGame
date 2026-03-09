var mus_now = ds_map_find_value(global.MusicData, room);

if mus_now != undefined{
	global.OverworldMusic = audio_play_sound(mus_now, 1, true)
}