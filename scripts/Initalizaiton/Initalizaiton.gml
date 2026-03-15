global.OverworldMusic = noone;
global.BattleMusic = noone;

enum MENU {
	SETUP = -1, // -1
	SELECTION, //0
	FIGHT, //1
	ACT, //2
	INVENTORY, //3
	MERCY, //4
	HIDE, //5
	ACT_SELECTION, //6
}

enum BATTLE_STATE {
	PLAYER,
	ACTION,
	DIALOGUE,
	BATTLE,
}

global.player = -1
//Player Stats Related 
global.PlayerMaxHp = 48;
global.PlayerLv = 8;
global.PlayerHp = 8;
global.PlayerDef = 1;
global.PlayerAtk = 14;
global.PlayerName = "ME"


global.WeaponATK = 0;
global.ArmorDEF = 0;

global.PlayerArmor = 7;
global.PlayerWeapon = 6;

global.PlayerGold = 0;
global.PlayerExp = 0;

//Player Battle Related
global.invframes = 0;
global.inbattle = false;

global.EnemyGrave = [];
//Grave for enemy that is waiting for destruction

global.Item = [];

//Init Battle Related
global.SoulX = 0;
global.SoulY = 0;
global.CurrentRoom = -1;
global.ExpToEarn = 0;
global.GoldToEarn = 0;


//Language
global.lang = "eng";

//Data Storage
global.CutsceneData = ds_map_create();
global.MusicData = ds_map_create();
var mus = global.MusicData
ds_map_add(mus, room_beginning, mus_deepwind);
ds_map_add(mus, room_hallway_0, mus_mysterious);
ds_map_add(mus, room_start_menu, mus_startmenu);
ds_map_add(mus, room_trailer2_1, mus_trailer2ambient);
ds_map_add(mus, room_trailer2_2, mus_trailer2ambient);


