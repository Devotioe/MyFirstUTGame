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

global.BattleMenu = MENU.SETUP; // init Menu variable 
global.UISelection = 0; //Selection for UI
global.EnemyRN = 0; // this track which Enemy is selected at the moment

MonSetup = false; //Step event setup for mon
ItemSetup = false;

BelowUIReference = 0;
EnemySelectionReference = 0;

ItemPage = 1;

box_basicshift = global.bulletboard_border_l + 20;

var _depth = -2;
PlayerDialogue = instance_create_depth(box_basicshift, 270, _depth, obj_TextElement);
Fight = instance_create_depth(box_basicshift + 30, 270, _depth, obj_TextElement);
Act = instance_create_depth(box_basicshift + 30, 270, _depth, obj_TextElement);
ActML = instance_create_depth(box_basicshift + 50, 270, _depth, obj_TextElement);
ActMR = instance_create_depth(box_basicshift + 300, 270, _depth, obj_TextElement);
ItemL_1 = instance_create_depth(box_basicshift + 50, 270, _depth, obj_TextElement);
ItemR_1 = instance_create_depth(box_basicshift + 300, 270, _depth, obj_TextElement);
ItemL_2 = instance_create_depth(box_basicshift + 50, 270, _depth, obj_TextElement);
ItemR_2 = instance_create_depth(box_basicshift + 300, 270, _depth, obj_TextElement);
Mercy = instance_create_depth(box_basicshift+ 30, 270, _depth, obj_TextElement);
Page = instance_create_depth(box_basicshift + 450, 345, _depth, obj_TextElement);

PlayerDialogue.Talker = "UI";
Fight.Talker = "UI";
Act.Talker = "UI";
ActML.Talker = "UI";
ActMR.Talker = "UI";
ItemL_1.Talker = "UI";
ItemR_1.Talker = "UI";
ItemL_2.Talker = "UI";
ItemR_2.Talker = "UI";
Mercy.Talker = "UI";
Page.Talker = "UI";

ButtonPosi_X[0] = 32;
ButtonPosi_X[1]	= 185;
ButtonPosi_X[2]	= 345;
ButtonPosi_X[3]	= 500;

ButtonSprite[0] = spr_button_fight;
ButtonSprite[1] = spr_button_act;
ButtonSprite[2] = spr_button_item;
ButtonSprite[3] = spr_button_mercy;

item_total_1 = 0;
item_total_2 = 0;

EcData = scr_searchEcounterData()
_CanFlee = EcData.CanFlee;

ActionText = noone;

