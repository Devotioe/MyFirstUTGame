var key_up = keyboard_check(vk_up);
var key_down = keyboard_check(vk_down);
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);

var spd = 2; // this line defines the speed how fast soul moves

//UISelection makes sure soul don't move when selecting
if global.Enemy[0].ReadyForBattle == false{
	x = x + spd*(key_right - key_left);
	y = y + spd*(key_down - key_up);
	x = clamp(x, global.bulletboard_border_l + 10, global.bulletboard_border_r - 10);
	y = clamp(y, global.bulletboard_border_u + 10, global.bulletboard_border_b - 10);
}
if (global.invframes > 0) { //when the invframes isn't 0, it decreases until it is 0
	global.invframes --; //invframes decreases per frame
	image_speed = 1; // the hurt animation plays when invframes is >0
}
else {
	image_speed = 0; //don't play the animation
	image_index = 0; //set soul to bright version
}