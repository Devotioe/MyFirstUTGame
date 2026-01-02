//obj_RoomTransistor

draw_set_alpha(alpha); //drawing the transition black screen 
draw_set_color(c_black)
draw_rectangle(0, 0, room_width, room_height, false);
mus_tar = ds_map_find_value(mus_data, target_rm);

if FadingBlack {
	alpha += 0.065;
	if alpha >= 1 {
		room_goto(target_rm)
		obj_Player.x = target_x;
		obj_Player.y = target_y;
		obj_Player.sprite_index = target_sprite_dir;
		FadingBlack = false;
	}
}else{
	alpha -= 0.065;
	obj_Player.visible = true;
	if (alpha <= 0){
		instance_destroy(self)
	}
}

draw_set_alpha(1); //preventing impacting others' draw event

