key_advance = keyboard_check_pressed(ord("Z") || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("z")))
scr_EndBattle()

if !ran {
	if allspared && key_advance && global.Enemy[0].ActionText.IsWriting == false{
		var fade = instance_create_depth(0, 0, -9999, obj_RoomTransistor);
		fade.target_x = obj_Player.Prev_X
		fade.target_y = obj_Player.Prev_Y
		fade.target_rm = global.CurrentRoom;
		fade.target_sprite_dir = obj_Player.now_sprite;
		instance_destroy(self)
		ran = true
	}
	if allkilled && key_advance && global.Enemy[0].ActionText.IsWriting == false{
		var fade = instance_create_depth(0, 0, -9999, obj_RoomTransistor);
		fade.target_x = obj_Player.Prev_X
		fade.target_y = obj_Player.Prev_Y
		fade.target_rm = global.CurrentRoom;
		fade.target_sprite_dir = obj_Player.now_sprite;
		instance_destroy(self)
		ran = true
	}

	if flee {
		alarm[0] = 150
		ran = true
	}
	
}

