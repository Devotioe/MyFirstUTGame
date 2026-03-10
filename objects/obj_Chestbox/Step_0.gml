// Inherit the parent event
event_inherited();
var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);
var key_right = keyboard_check_pressed(vk_right);
var key_left = keyboard_check_pressed(vk_left);

var key_advance = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var key_quit = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);

if (opened){
	obj_Player.frozen = true
	if key_up {
		global.UISelection -= 1;
	}
	if key_down {
		global.UISelection += 1;
	}
	if (key_left && side == 1 && array_length(global.Item) > 0){
		side = 0;	
	}
	if (key_right && side == 0 && array_length(MyInventory) > 0){
		side = 1;	
	}
	if (side == 0){
		global.UISelection = clamp(global.UISelection, 0, array_length(global.Item) - 1);
	}else{
		global.UISelection = clamp(global.UISelection, 0, array_length(MyInventory) - 1);
	}
	if (key_quit){
		depth = -y;
		opened = false;
		obj_Player.frozen = false;
	}
	if (key_advance){
		Message = 0;
		switch (side){
			case 0:
			if array_length(MyInventory) < 10 {
				var _temp = global.Item[global.UISelection];
				array_delete(global.Item, global.UISelection, 1);
				array_push(MyInventory, _temp);
			}else{
				Message = 2;
			}
			break;
			case 1:
			if array_length(global.Item) < 8 {
				var _temp = MyInventory[global.UISelection];
				array_delete(MyInventory, global.UISelection, 1);
				array_push(global.Item, _temp);
			}else{
				Message = 1;	
			}
			break;
		}
		if array_length(global.Item) == 0 or array_length(MyInventory) == 0{
			SwitchSide()	
		}
	}
}

