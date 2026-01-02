var fade = instance_create_depth(0, 0, -9999, obj_RoomTransistor);

fade.target_x = obj_Player.Prev_X
fade.target_y = obj_Player.Prev_Y
fade.target_rm = global.CurrentRoom;
fade.target_sprite_dir = obj_Player.now_sprite;

instance_destroy(self)