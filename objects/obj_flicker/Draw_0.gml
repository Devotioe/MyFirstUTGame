draw_set_alpha(0.2)
draw_set_colour(c_black);
draw_rectangle(0, 0, room_width, room_height, false);


if cd > 0 {
	cd --	
}
else{
	
	if counter > 0{
		counter --;
		draw_set_alpha(alpha);
		draw_set_colour(c_black);
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_alpha(1);
	}else{
		
		//second chance of flicker
		dice = round(random(2)) + 1;
		show_debug_message(dice)
		if (dice > 2){
			counter = flicker_last;
			return;
		}
		else{
			counter = flicker_last;	
			cd = cd_value;
		}
	}	
}