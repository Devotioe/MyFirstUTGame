if (!setup){
	obj_TextElement.Alpha += 0.05;
	if obj_TextElement.Alpha >= 1 {
		setup = true;	
	}
}

var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);
var key_right = keyboard_check_pressed(vk_right);
var key_left = keyboard_check_pressed(vk_left);

var key_advance = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var key_quit = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);

if state == 0 {
	if key_up {
		prevSel = global.UISelection;
		global.UISelection -= 1;
	}

	if key_down {
		prevSel = global.UISelection;
		global.UISelection += 1;
	}

	global.UISelection = clamp(global.UISelection, 0, 3);

	if (key_left || key_right || key_down || key_up){ //Sound
		if (prevSel != global.UISelection){
			audio_play_sound(snd_movemenu, 1, false);
			prevSel = global.UISelection;
		}
	}

	for (var i = 0 ; i < array_length(Selections) ; i ++){
		Selections[i].TextToDraw = Values[i];	
	}


	for (var i = 0 ; i < array_length(Selections) ; i ++){
		Selections[i].TextToDraw = "";
	}

	Selections[global.UISelection].TextToDraw = "~Y";

	for (var i = 0 ; i < array_length(Selections) ; i ++){
		Selections[i].TextToDraw += Values[i];
		Selections[i].TextLength = string_length(Selections[i].TextToDraw)
	}


	draw_sprite(spr_ourheart, 0, 270, 115 + global.UISelection * 100)

}

if key_advance {
	switch (global.UISelection){
		case 0:
		global.player = instance_create_depth(0, 0, -9, obj_Player);
		scr_RoomTransition(100, 200, room_beginning, obj_Player.now_sprite);
		global.UISelection = -1;
		break;
		
		case 3:
		for (var i = 0 ; i < array_length(Selections) ; i ++){
			Selections[i].visible = false;
		}
		Credit_Context.visible = true;
		state = 1;
	}
}

if key_quit {
	if state == 1 {
		for (var i = 0 ; i < array_length(Selections) ; i ++){
			Selections[i].visible = true;
		}
		Credit_Context.visible = false;
		state = 0;
	}
}

