
var right_key = keyboard_check_pressed(vk_right);
var left_key = keyboard_check_pressed(vk_left);
var up_key = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);
var select_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
var quit_key = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"));

//draw the buttons
for ( var i = 0 ; i < 4 ; i ++ ){ //every frame button will reset
	draw_sprite(ButtonSprite[i], 0, ButtonPosi_X[i] , 430);
}

//Menu navigation
if (global.UISelection > -1){ //-1 means can't select menu
	
	var snd_move = snd_movemenu;
	
	if (global.BattleMenu > MENU.SETUP && global.BattleMenu <= MENU.MERCY){ //make sure the button will be highlighted in player turn
		for ( var i = 0 ; i < 4 ; i ++ ){ //every frame button will reset
			draw_sprite(ButtonSprite[BelowUIReference], 1, ButtonPosi_X[BelowUIReference] , 430);
		}	
	}
		
	if (global.BattleMenu == MENU.SELECTION){ // Main Menu
		
		if right_key { 
			global.UISelection += 1;
			audio_play_sound(snd_move, 20, false);
			if (global.UISelection > 3){
				global.UISelection = 0;
			}
		}
		if left_key {
			global.UISelection -= 1;
			audio_play_sound(snd_move, 20, false);
			if (global.UISelection < 0){
				global.UISelection = 3;
			}
		}
		global.UISelection = clamp(global.UISelection, 0, 3); //clamping the buttons
		BelowUIReference = global.UISelection;	
		
		if (global.Manager.state == BATTLE_STATE.PLAYER){ //Draw the soul if not in fight
			draw_sprite(spr_ourheart, 0, ButtonPosi_X[global.UISelection] + 17, 452);
		}
	}
	
	if (global.BattleMenu == MENU.FIGHT || global.BattleMenu == MENU.ACT){ //Fight and Act, Choose Enemy
		if up_key {
			audio_play_sound(snd_move, 20, false);
			global.UISelection -= 1;
		}
		if down_key {
			audio_play_sound(snd_move, 20, false);
			global.UISelection += 1;
		}
		global.UISelection = clamp(global.UISelection, 0, array_length(global.Enemy) - 1);
	}
		
	if (global.BattleMenu == MENU.ITEM){ //Item Page
		if (right_key){
			audio_play_sound(snd_move, 20, false);
			if (global.UISelection == 1 || global.UISelection == 3){ //check if on left row
				if array_length(global.Item) > 4{ //if have more than 4 items, can advance page
					if ItemPage == 1 {
						ItemPage = 2;
					}else{
						ItemPage = 1
					}
					switch global.UISelection{
						case 1:
						global.UISelection = 0;
						break;
						case 3:
						global.UISelection = 2;
						break;
					}
				}
			}
			else{
				global.UISelection += 1;
				}
		}
		if (left_key){
			audio_play_sound(snd_move, 20, false);
			if (global.UISelection == 0 || global.UISelection == 2){
				if array_length(global.Item) > 4{
					switch ItemPage {
					case 1:
					ItemPage = 2;
					break;
					case 2:
					ItemPage = 1;
					break;
					}
					switch global.UISelection {
						case 0:
						global.UISelection = 1;
						break;
						case 2:
						global.UISelection = 3;
						break;
					}
				}
			}else{
				global.UISelection -= 1;
			}
		}
			
		if (up_key){
			if (global.UISelection == 2 || global.UISelection == 3){
				global.UISelection -= 2;
				audio_play_sound(snd_move, 20, false);
			}
		}
		if (down_key){
			if (global.UISelection == 0 || global.UISelection == 1){
				global.UISelection += 2;
				audio_play_sound(snd_move, 20, false);
			}
		}
			
		if (ItemPage == 1){
			global.UISelection = clamp(global.UISelection, 0, item_total_1 - 1);
		}
		else{
			global.UISelection = clamp(global.UISelection, 0, item_total_2 - 1);
		}	
		
}
		
	if (global.BattleMenu == MENU.ACT_SELECTION){ //Act Command
		if up_key {
			if global.UISelection != 0 || global.UISelection != 1{
				global.UISelection -= 2;
				audio_play_sound(snd_move, 1 ,false);
			}
		}
		if down_key {
			if global.UISelection != array_length(global.Enemy[global.EnemyRN].Act) -1 || global.UISelection != array_length(global.Enemy[global.EnemyRN].Act) - 2{
				global.UISelection -= 2;
				audio_play_sound(snd_move, 1 ,false);
			}
		}
		if right_key && global.UISelection %2 = 0 {
			global.UISelection += 1;
			audio_play_sound(snd_move, 1 ,false);
		}
		if left_key && global.UISelection %2 != 0 {
			global.UISelection -= 1;
			audio_play_sound(snd_move, 1 ,false);
		}
		
		global.UISelection = clamp(global.UISelection, 0, array_length(global.Enemy[global.EnemyRN].Act) -1);
	}
		
	if (global.BattleMenu == MENU.MERCY){ //Mercy Menu
		if up_key {
			audio_play_sound(snd_move, 20, false);
			global.UISelection -= 1;
		}
		if down_key {
			audio_play_sound(snd_move, 20, false);
			global.UISelection += 1;
		}

		if (_CanFlee == true){ // clamping
			global.UISelection = clamp(global.UISelection, 0, 1);
		}
		else{
			global.UISelection =0;
		}
}
		
	//Drawing Soul//
	if (global.BattleMenu != MENU.HIDE){
		if (global.BattleMenu == MENU.FIGHT || global.BattleMenu == MENU.ACT || global.BattleMenu == MENU.MERCY){ 
			draw_sprite(spr_ourheart, 0, 60, 286 + 36 * global.UISelection);		
		}
		else if (global.BattleMenu > MENU.SELECTION){ //For Act and Item grid selection
			draw_sprite(spr_ourheart, 0, 70 + (250*(global.UISelection%2)), 290 + (32*floor(global.UISelection/2)));
		}
	}
	////////////////
	
}

//Other information draws
//HP, NAME, LV
var UI_font = fnt_Battle_UI;
var DefaultColor = c_white;
var UI_hpfont = fnt_Battle_HPfont;
var hp_maxwidth = global.PlayerMaxHp * 1.25;
var hp_width = global.PlayerHp * 1.25;

draw_set_color(DefaultColor);

draw_set_font(UI_font); //Name and LV
draw_text(274 + hp_maxwidth + 15 , 400, string(global.PlayerHp) + " / " + string(global.PlayerMaxHp))
draw_text(30 , 400, string(global.PlayerName)+"   LV " + string(global.PlayerLv));


draw_set_font(UI_hpfont); //hp
draw_text(225 , 405, "HP");

//HP BAR
draw_set_color(c_red);
draw_rectangle(255, 400, 255 + hp_maxwidth, 420, false)

draw_set_color(c_yellow);
draw_rectangle(255, 400, 255 + hp_width, 420, false )