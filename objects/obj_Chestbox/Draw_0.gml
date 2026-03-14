draw_self()

var border_width = 5

var snd_move = snd_movemenu;
var snd_choose = snd_select;



var v_length = 450;
var h_length = 600;

var l_border = camera_get_view_x(view_camera[0]) + 20;
var t_border = camera_get_view_y(view_camera[0]) + 20;
var r_border = l_border + h_length;
var b_border = t_border + v_length;
var middle = l_border + h_length/2
var gap = 30;

if opened {
	draw_set_color(c_white);
	draw_rectangle(l_border, t_border, r_border, b_border, false);
	draw_set_color(c_black);
	draw_rectangle(l_border + border_width, t_border + border_width, r_border - border_width, b_border - border_width, false);
	
	
	
	var empty_slots = 10 - array_length(MyInventory);
	
	var box_items_counts = array_length(MyInventory);
	var inv_items_counts = array_length(global.Item);
	
	draw_set_colour(c_white)
	for (var i = 0 ; i < box_items_counts ; i ++){
		draw_text(middle + 50, t_border + 50 + i * gap, GetItemData(MyInventory[i]).ItemName);
	}
	for (var i = 0 ; i < inv_items_counts ; i ++){
		draw_text(l_border + 50, t_border + 50 + i * gap, GetItemData(global.Item[i]).ItemName);
	}
	
	if (side == 0){
		draw_sprite(spr_ourheart, 0, l_border + 30, t_border + 65 + global.UISelection * gap);
	}else{
		draw_sprite(spr_ourheart, 0, middle + 20, t_border + 65 + global.UISelection * gap);
	}
	
	draw_set_font(fnt_Battle_Normal)
	draw_text(middle - 220, t_border + 10, "INVENTORY")
	draw_text(middle + 130, t_border + 10, "BOX")
	
	draw_line(middle, t_border + 20, middle, b_border - 50);
	
	switch (Message){
		case 0 :
		draw_text(l_border + 50, b_border - 50, "Press [X] to exit.")
		break;
		case 1 :
		draw_text(l_border + 50, b_border - 50, "Your inventory is full!")
		break;
		case 2 :
		draw_text(l_border + 50, b_border - 50, "The box is full!")
		break;
		default:
		draw_text(l_border + 50, b_border - 50, "Press [X] to exit.")
		break;
	
	}
	
	
	
	//draw_set_colour(c_red)
	//for (var i = 0 ; i < 10 - box_items_counts ; i ++){
	//	draw_line(middle + 50, b_border - 50 - i * gap ,  r_border - 50, b_border - 50 - i * gap);
	//}
	
	
	//draw_rectangle()
	

	//for (var i = 0 ; i < 8 ; i ++){	
	//	draw_line(l_border + 50, t_border + 80 + i * gap ,  middle - 50, t_border + 80 + i * gap);
	//}
	
}

draw_set_alpha(1)

