global.OverworldMusic = noone;
global.BattleMusic = noone;


//Player Stats Related 
global.PlayerMaxHp = 92;
global.PlayerLv = 19;
global.PlayerHp = 70;
global.PlayerDef = 2;
global.PlayerAtk = 80;
global.PlayerName = "ME"

global.PlayerArmor = "Bandage";
global.PlayerWeapon = "Real Knife";

global.PlayerGold = 0;
global.PlayerExp = 0;

//Player Battle Related
global.invframes = 0;
global.inbattle = false;

global.EnemyGrave = [];
//Grave for enemy that is waiting for destruction

global.Item = [1, 2, 3, 1, 2];

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


