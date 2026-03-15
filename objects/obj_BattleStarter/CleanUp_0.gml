global.Menu = instance_create_depth(0, 0, -99, obj_Menu);
instance_create_depth(0, 0, -9, obj_EnemyCreator);

var EcData = scr_searchEcounterData();
var music = EcData[$ "Music"];

if (music != undefined){
	global.BattleMusic = audio_play_sound(music, 1, true);
}



