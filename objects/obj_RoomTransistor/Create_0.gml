//obj_RoomTransistor create
FadingBlack = true;

target_rm = 0;
now_rm = room;

alpha = 0;

target_x = 0;

target_y = 0;

target_sprite_dir = 0;

mus_data = global.MusicData;

mus_now = ds_map_find_value(mus_data, now_rm);

mus_tar = ds_map_find_value(mus_data, target_rm);
