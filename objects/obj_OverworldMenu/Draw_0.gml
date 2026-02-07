var up_l_border = camera_get_view_x(view_camera[0]) + 20;
var up_t_border = camera_get_view_y(view_camera[0]) + 30;
var up_r_border = up_l_border + 150;
var up_b_border = up_t_border + 125;

var border_width = 5

var text_offset = 10;

var dn_l_border = up_l_border;
var dn_t_border = up_b_border + 10
var dn_r_border = up_r_border;
var dn_b_border = dn_t_border + 100;

var snd_move = snd_movemenu;
var snd_choose = snd_select;

var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);
var key_advance = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var key_quit = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);

fnt_name = fnt_Battle_Normal;
fnt_UI = fnt_Battle_UI;

if (opened){
	
	if (setup == false){
		global.UISelection = 0;
		state = OVERWORLD_MENU.SELECTION;
		obj_Player.frozen = true;
		setup = true;
	}
	
	//UP MENU
    draw_set_color(c_white);
    draw_rectangle(up_l_border, up_t_border, up_r_border, up_b_border, false);
	draw_set_color(c_black);
    draw_rectangle(up_l_border + border_width, up_t_border + border_width, up_r_border - border_width, up_b_border - border_width, false);

	//DOWN MENU
    draw_set_color(c_white);
    draw_rectangle(dn_l_border , dn_t_border, dn_r_border, dn_b_border, false);
	draw_set_color(c_black);
    draw_rectangle(dn_l_border + border_width, dn_t_border + border_width, dn_r_border - border_width, dn_b_border - border_width, false);
    
	draw_set_font(fnt_name);
	//Name
    draw_set_color(c_white);
    draw_text(up_l_border + border_width + text_offset, up_t_border + border_width + text_offset, string(global.PlayerName));
	
	
	draw_set_font(fnt_UI);
	//LV
	draw_text(up_l_border + border_width + text_offset, up_t_border + border_width + text_offset + 30, "LV " + string(global.PlayerLv));
	//HP
	draw_text(up_l_border + border_width + text_offset, up_t_border + border_width + text_offset + 60, "HP " + string(global.PlayerHp) + "/" + string(global.PlayerMaxHp));
	//GOLD
	draw_text(up_l_border + border_width + text_offset, up_t_border + border_width + text_offset + 90, "G  " + string(global.PlayerGold));
	
	
	var dn_offset = 40 //This is for the space of drawing soul
	
	draw_set_font(fnt_name);
	//ITEM
	draw_text(dn_l_border + border_width + text_offset + dn_offset, dn_t_border + border_width + text_offset + 0, "ITEM");
	//STAT
	draw_text(dn_l_border + border_width + text_offset + dn_offset, dn_t_border + border_width + text_offset + 20, "STAT");
	//CELL
	draw_text(dn_l_border + border_width + text_offset + dn_offset, dn_t_border + border_width + text_offset + 40, "CELL");
	
	
	if (key_up){
		prevSel = global.UISelection;
		global.UISelection -= 1;
	}
	if (key_down){
		prevSel = global.UISelection;
		global.UISelection += 1;
	}

	switch (state){
		case OVERWORLD_MENU.SELECTION:
		global.UISelection = clamp(global.UISelection, 0 , 2);
		draw_sprite(spr_ourheart, 0, dn_l_border + border_width + dn_offset, dn_t_border + border_width + text_offset + global.UISelection * 20 + 15)
		break;
		
		case OVERWORLD_MENU.STAT:
		break;
		
		case OVERWORLD_MENU.ITEM:
		break;
	}
		
	if (prevSel != global.UISelection){
		audio_play_sound(snd_move, 1, false);
		prevSel = global.UISelection;
	}
	
	
	if (key_advance){
		if (state == OVERWORLD_MENU.SELECTION){
			state = global.UISelection + 1;
			audio_play_sound(snd_choose, 1, false);
		}
	}
	if (key_quit){
		if (state != OVERWORLD_MENU.SELECTION){
			state = OVERWORLD_MENU.SELECTION;
		}else{
			opened = false;
			setup = false;
			obj_Player.frozen = false;
			global.UISelection = -1;
		}
	}
}