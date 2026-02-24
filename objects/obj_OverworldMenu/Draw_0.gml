

var border_width = 5

var text_offset = 10;

var menus_gap = 5;

var snd_move = snd_movemenu;
var snd_choose = snd_select;

var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);
var key_right = keyboard_check_pressed(vk_right);
var key_left = keyboard_check_pressed(vk_left);

var key_advance = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var key_quit = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);

var menu_h_length = 150;
var main_v_length = 75;
var sts_v_length = 125;

var main_l_border = camera_get_view_x(view_camera[0]) + 20;
var main_t_border = camera_get_view_y(view_camera[0]) + 240 - main_v_length;
var main_r_border = main_l_border + menu_h_length;
var main_b_border = camera_get_view_y(view_camera[0]) + 240 + main_v_length;

var sts_l_border = camera_get_view_x(view_camera[0]) + 20;
var sts_r_border = main_l_border + menu_h_length;
var sts_b_border = main_t_border - menus_gap;
var sts_t_border = sts_b_border - sts_v_length;



var stats_h_length = 350;
var stats_v_length = 400;

var items_h_length = 350
var items_v_length = 400;

var stats_t_border = sts_t_border;
var stats_l_border = sts_r_border + 20;
var stats_r_border = stats_l_border + stats_h_length;
var stats_b_border = stats_t_border + stats_v_length;

var items_t_border = sts_t_border;
var items_l_border = sts_r_border + 20;
var items_r_border = items_l_border + items_h_length;
var items_b_border = items_t_border + items_v_length;




fnt_normal = fnt_Battle_Normal;
fnt_UI = fnt_Battle_UI;

if (opened){
	
	obj_Player.frozen = true;
	
	if (setup == false){
		audio_play_sound(snd_choose, 1, false);
		global.UISelection = 0;
		state = OVERWORLD_MENU.SELECTION;
		obj_Player.frozen = true;
		setup = true;
	}

	//STATUS MENU
	draw_set_color(c_white);
	draw_rectangle(sts_l_border, sts_t_border, sts_r_border, sts_b_border, false);
	draw_set_color(c_black);
	draw_rectangle(sts_l_border + border_width, sts_t_border + border_width, sts_r_border - border_width, sts_b_border - border_width, false);
	
	//MAIN MENU
	draw_set_color(c_white);
	draw_rectangle(main_l_border , main_t_border, main_r_border, main_b_border, false);
	draw_set_color(c_black);
	draw_rectangle(main_l_border + border_width, main_t_border + border_width, main_r_border - border_width, main_b_border - border_width, false);

	switch (state){
		case OVERWORLD_MENU.STAT:
		//STAT MENU
		draw_set_color(c_white);
	    draw_rectangle(stats_l_border , stats_t_border, stats_r_border,stats_b_border, false);
		draw_set_color(c_black);
	    draw_rectangle(stats_l_border + border_width, stats_t_border + border_width, stats_r_border - border_width, stats_b_border - border_width, false);
		
		draw_set_color(c_white);
		//Name
		draw_text(stats_l_border + border_width + 20, stats_t_border + border_width + 20, "\"" + string(global.PlayerName +"\""));
		
		//LV HP
		draw_text(stats_l_border + border_width + 20, stats_t_border + border_width + 70, "LV " + string(global.PlayerLv));
		draw_text(stats_l_border + border_width + 20, stats_t_border + border_width + 100, "HP " + string(global.PlayerHp) + "/" + string(global.PlayerMaxHp));
		
		//ATK DEF
		draw_text(stats_l_border + border_width + 20, stats_t_border + border_width + 140, "AT " + string(global.PlayerAtk));
		draw_text(stats_l_border + border_width + 20, stats_t_border + border_width + 170, "DF " + string(global.PlayerDef));
		
		
		//ARMOR WEAPON
		
		//GOLD
		
		break;
	
		case OVERWORLD_MENU.ITEM:
		//ITEM MENU
		var itemCounts = array_length(global.Item);
		draw_set_color(c_white);
	    draw_rectangle(items_l_border , items_t_border, items_r_border, items_b_border, false);
		draw_set_color(c_black);
	    draw_rectangle(items_l_border + border_width, items_t_border + border_width, items_r_border - border_width, items_b_border - border_width, false);
		draw_set_colour(c_white)
		for (var i = 0 ; i < itemCounts ; i ++){
			draw_text(items_l_border + border_width + text_offset + 50, items_t_border + border_width + text_offset + i * 40, GetItemData(global.Item[i]).ItemName);
		}
		draw_text(items_l_border + 60, items_b_border - 50, "USE")
		draw_text(items_l_border + 150, items_b_border - 50, "INFO")
		draw_text(items_l_border + 250, items_b_border - 50, "DROP")
		break;
	}
	
	
	draw_set_font(fnt_normal);
	
	//Name
    draw_set_color(c_white);
    draw_text(sts_l_border + border_width + text_offset, sts_t_border + border_width + text_offset, string(global.PlayerName));
	
	
	draw_set_font(fnt_UI);
	//LV
	draw_text(sts_l_border + border_width + text_offset, sts_t_border + border_width + text_offset + 30, "LV " + string(global.PlayerLv));
	//HP
	draw_text(sts_l_border + border_width + text_offset, sts_t_border + border_width + text_offset + 60, "HP " + string(global.PlayerHp) + "/" + string(global.PlayerMaxHp));
	//GOLD
	draw_text(sts_l_border + border_width + text_offset, sts_t_border + border_width + text_offset + 90, "G  " + string(global.PlayerGold));
	
	
	var main_offset = 40 //This is for the space of drawing soul
	
	draw_set_font(fnt_normal);
	//ITEM
	draw_text(main_l_border + border_width + text_offset + main_offset, main_t_border + border_width + text_offset + 0, "ITEM");
	//STAT
	draw_text(main_l_border + border_width + text_offset + main_offset, main_t_border + border_width + text_offset + 40, "STAT");
	//CELL
	draw_text(main_l_border + border_width + text_offset + main_offset, main_t_border + border_width + text_offset + 80, "CELL");
	
	
	if (key_up && ItemSelected != true){
		prevSel = global.UISelection;
		global.UISelection -= 1;
	}
	if (key_down && ItemSelected != true){
		prevSel = global.UISelection;
		global.UISelection += 1;
	}
	if (key_left && ItemSelected == true){
		prevSel = global.UISelection;
		global.UISelection -= 1;
	}
	if (key_right && ItemSelected == true){
		prevSel = global.UISelection;
		global.UISelection += 1;
	}

	switch (state){ //heart navigation
		case OVERWORLD_MENU.SELECTION:
		global.UISelection = clamp(global.UISelection, 0 , 2);
		draw_sprite(spr_ourheart, 0, main_l_border + border_width + main_offset - 10, main_t_border + border_width + text_offset + global.UISelection * 40 + 15)
		break;
		
		case OVERWORLD_MENU.STAT:
		global.UISelection = 0;
		
		break;
		case OVERWORLD_MENU.ITEM:
		if (ItemSelected == true){ //Bottom
			global.UISelection = clamp(global.UISelection, 0, 2);
			switch (global.UISelection){
				case 0:
				draw_sprite(spr_ourheart, 0, items_l_border + 30, items_b_border - 30);
				break;
				case 1:
				draw_sprite(spr_ourheart, 0, items_l_border + 130, items_b_border - 30);
				break;
				case 2:
				draw_sprite(spr_ourheart, 0, items_l_border + 220, items_b_border - 30);
				break;
				
			}
		}
		else{ //Item Selecting
			global.UISelection = clamp(global.UISelection, 0 , array_length(global.Item) - 1);
			draw_sprite(spr_ourheart, 0, items_l_border + border_width + 25, items_t_border + border_width + text_offset + global.UISelection * 40 + 15)
		}
		break;
	}
	
	if (key_left || key_right || key_down || key_up){
		if (prevSel != global.UISelection){
			audio_play_sound(snd_move, 1, false);
			prevSel = global.UISelection;
		}
	}
	
	if (key_advance){
		if (state == OVERWORLD_MENU.SELECTION){
			SelctionReference = global.UISelection;
			if (global.UISelection + 1 == OVERWORLD_MENU.ITEM && array_length(global.Item) == 0){
				exit;
			}
			state = global.UISelection + 1;
			audio_play_sound(snd_choose, 1, false);
			exit;
		}
		if (state == OVERWORLD_MENU.ITEM && ItemSelected != true){
			ItemSelected = true;
			ItemSelectionReference = global.UISelection;
			audio_play_sound(snd_choose, 1, false);
			global.UISelection = 0;
			exit;
		}
		if (state == OVERWORLD_MENU.ITEM && ItemSelected == true){

			
			switch (global.UISelection){
				
				case 0:
				Use(ItemSelectionReference);
				break;
				case 1:
				Info(ItemSelectionReference);
				break;
				case 2:
				Drop(ItemSelectionReference);
				break;
			}
			
			ItemSelected = false;
			opened = false;
			setup = false;
			obj_Player.frozen = false;
			global.UISelection = 0;
		}
	}
	if (key_quit){
		if (state != OVERWORLD_MENU.SELECTION && ItemSelected != true){
			global.UISelection = SelctionReference;
			state = OVERWORLD_MENU.SELECTION;
			exit;
		}
		else{
			if (state == OVERWORLD_MENU.ITEM){
				global.UISelection = ItemSelectionReference;
				ItemSelected = false;
				exit;
			}
			else{
				opened = false;
				setup = false;
				obj_Player.frozen = false;
				global.UISelection = 0;
				exit;
			}
		}
	}
}
