function scr_RoomTransition(_x, _y, _room, _sprite){
	var fade = instance_create_depth(0, 0, -9999, obj_RoomTransistor);
	fade.target_x = _x;
	fade.target_y = _y;
	fade.target_rm = _room;
	fade.target_sprite_dir = _sprite;
	instance_destroy(self)	
}