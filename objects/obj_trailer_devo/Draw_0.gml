switch bounce {
	case 1:
	x_freq = 6;
	y_freq = 3;
	break;
	
	case 2:
	y_freq = 14
	break;
	
	case 3:
	y_freq = 20;
	break;
	
	case 4:
	x_freq = 4;
	y_freq = 2;
	break;
}


if(bounce == 1) {
	siner += 0.5;
	xoff= cos(siner/ x_freq);
	yoff= sin(siner/ y_freq);
}

if(bounce == 2) {
	siner += 0.5;
	yoff= round(sin(siner / y_freq) * 2)
}

if(bounce == 3) {
	siner += 0.5;
	yoff= round(sin(siner / y_freq) * 2 )
}


	
headoff = yoff

if (deadtest ==0){
	draw_sprite_ext(spr_legs, 0, x, y + 90, 1, 1, 0, 16777215, 1);
	
	var torso_y = y + 42 + yoff / 1.5
	var torso_x = x + xoff
	draw_sprite_ext(spr_torso, 0, round(torso_x), round(torso_y), 1, 1, 0, 16777215, 1);
	
	var head_y = torso_y - 42 + headoff * 0.5
	var head_x = x + xoff 
	draw_sprite_ext(spr_head, 5, round(head_x), round(head_y), 1, 1, 0, 16777215, 1);	
}