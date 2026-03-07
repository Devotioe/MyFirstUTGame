

var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);
var key_right = keyboard_check_pressed(vk_right);
var key_left = keyboard_check_pressed(vk_left);

var key_advance = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var key_quit = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);

if key_up {
	prevSel = global.UISelection;
	global.UISelection -= 1;
}

if key_down {
	prevSel = global.UISelection;
	global.UISelection += 1;
}


if (key_left || key_right || key_down || key_up){ //Sound
	if (prevSel != global.UISelection){
		audio_play_sound(snd_movemenu, 1, false);
		prevSel = global.UISelection;
	}
}

for (var i = 0 ; i < array_length(Selections) ; i ++){
	Selections[i].TextToDraw = Values[i];	
}

global.UISelection = clamp(global.UISelection,0 , 3);

for (var i = 0 ; i < array_length(Selections) ; i ++){
	Selections[i].TextToDraw = "";
}

Selections[global.UISelection].TextToDraw = "~Y";

for (var i = 0 ; i < array_length(Selections) ; i ++){
	Selections[i].TextToDraw += Values[i];
	Selections[i].TextLength = string_length(Selections[i].TextToDraw)
}

draw_sprite(spr_ourheart, 0, 270, 115 + global.UISelection * 100)