global.encounterID = 1;

_ecID = string(global.encounterID); //String for searching ID

enemyID = global.encounterData[$ _ecID].enemyID
enemyCounts = array_length(enemyID);

global.battle_fleeable = true;
global.battle_opening = false;
global.battle_ending = false;
global.battle_playerfirst = true;

#region //create UI
if (global.battle_playerfirst == true){ //init box border and soul posi
		bulletboard_init_border_l = 30; //init the size of box
		bulletboard_init_border_r = 610;
		bulletboard_init_border_u = 250;
		bulletboard_init_border_b = 390; //init the size of box
		soul_init_posi_x = 52;
		soul_init_posi_y = 442;
		}
else{
	bulletboard_init_border_l = 270; //init the size of box
	bulletboard_init_border_r = 370;
	bulletboard_init_border_u = 270;
	bulletboard_init_border_b = 440;
	soul_init_posi_x = 320;
	soul_init_posi_y = 320;
}



instance_create_depth(0,0,-9,obj_soul);
obj_soul.visible = false;
global.bulletboard = instance_create_depth(320, 300, 0 , obj_bulletboard) //spawn bullet board
global.bulletboard_border_l = bulletboard_init_border_l; //sizing bullet board
global.bulletboard_border_r = bulletboard_init_border_r; //sizing bullet board
global.bulletboard_border_u = bulletboard_init_border_u;
global.bulletboard_border_b = bulletboard_init_border_b;

//basic logic
#endregion
	
instance_destroy(self)
	
	
