
if (current_r < global.bulletboard_border_r){
	current_r += abs(global.bulletboard_border_r - current_r) / expand_spd ;
}
if (current_r > global.bulletboard_border_r){
	current_r -= abs(global.bulletboard_border_r - current_r) / expand_spd ;
}


if (current_l > global.bulletboard_border_l){
	current_l -= abs(global.bulletboard_border_l - current_l) / expand_spd ;
}
if (current_l < global.bulletboard_border_l){
	current_l += abs(global.bulletboard_border_l - current_l) / expand_spd ;
}

if (current_u > global.bulletboard_border_u){
	current_u -= abs((global.bulletboard_border_u - current_u)) / expand_spd ;
}
if (current_u < global.bulletboard_border_u){
	current_u += abs((global.bulletboard_border_u - current_u)) / expand_spd5 ;
}


if (current_b < global.bulletboard_border_b){
	current_b += abs((global.bulletboard_border_b - current_b)) / expand_spd ;
}
if (current_b > global.bulletboard_border_b){
	current_b -= abs((global.bulletboard_border_b - current_b)) / expand_spd ;
}



