if place_meeting(x, y, obj_Player) && !instance_exists(obj_RoomTransistor){
	var fade = instance_create_depth(0, 0, -9999, obj_RoomTransistor);
	obj_Player.frozen = true;
	fade.target_x = target_x
	fade.target_y = target_y;
	fade.target_rm = target_rm
	fade.target_sprite_dir = target_sprite_dir;
}