ItemID[0] = "SnowPiece"
ItemID[1] = "B.Pie";
ItemID[2] = "L.Hero";



global.OverworldMusic = noone;
global.BattleMusic = noone;

//Player Stats Related 
global.PlayerMaxHp = 92;
global.PlayerLv = 19;
global.PlayerHp = 92;
global.PlayerDef = 2;
global.PlayerAtk = 80;
global.PlayerName = "Chara"

global.PlayerArmor = "Bandage";
global.PlayerWeapon = "Real Knife";

global.PlayerGold = 0;
global.PlayerExp = 0;

//Player Battle Related
global.invframes = 0;
global.inbattle = false;

global.EnemyGrave = [];
//Grave for enemy that is waiting for destruction

//Player Items
global.Item = -1; //init
//global.Item[0] = ItemID[0];
//global.Item[1] = ItemID[1];
//global.Item[2] = ItemID[2];
//global.Item[3] = ItemID[2];
//global.Item[4] = ItemID[2];
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


