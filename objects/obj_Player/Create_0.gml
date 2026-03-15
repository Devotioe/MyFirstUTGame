left_sprite = spr_mainchara_l;
right_sprite = spr_mainchara_r;
down_sprite = spr_mainchara_d
up_sprite = spr_mainchara_u;


moving = false

spd = 3; // this line defines the speed how fast


Camera = instance_create_depth(0, 0, 0, obj_Player_Camera);

frozen = false;

running = false;

BattlePrepCounter = 0;

FlashTimer = 0;

SoulX = 0;
SoulY = 0;

AlertMark = 0;
ShowMark = true;

Prev_X = 0;
Prev_Y = 0;


now_sprite = spr_mainchara_d;

global.overworldmenu = instance_create_depth(0, 0, -9999, obj_OverworldMenu);

global.ArmorDEF = GetItemData(global.PlayerArmor).AddDEF;
global.WeaponATK = GetItemData(global.PlayerWeapon).AddATK;

