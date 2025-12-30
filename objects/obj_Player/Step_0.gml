var right_key = keyboard_check(vk_right);
var left_key = keyboard_check(vk_left);
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);

//Make player disappear when transisting and in battle room
if !instance_exists(obj_RoomTransistor) {
	depth = -y;
}

if keyboard_check(ord("X")) {
	running = true;
	spd = 6;
}else{
	running = false;
	spd = 3;
}

//UISelection makes sure soul don't move when selecting
var x_spd = spd*(right_key - left_key);
var y_spd = spd*(down_key - up_key);



if !frozen {
	x += x_spd;
	y += y_spd;

	if right_key && !left_key{
		moving = true;
		sprite_index = right_sprite
		if (place_meeting(x,y,obj_CollisionWall) || place_meeting(x,y,obJ_Collision)){
			x -= x_spd;
			moving = false;
		}
	}

	if up_key && !down_key{
		moving = true;
		sprite_index = up_sprite
		if (place_meeting(x,y,obj_CollisionWall) || place_meeting(x,y,obJ_Collision)){
			y -= y_spd
			moving = false;
		}
	}
	if down_key && !up_key{
		moving = true;
		sprite_index = down_sprite
		if (place_meeting(x,y,obj_CollisionWall) || place_meeting(x,y,obJ_Collision)){
			y -= y_spd
			moving = false;
		}
	}

	if left_key && !right_key {
		moving = true;
		sprite_index = left_sprite
		if (place_meeting(x,y,obj_CollisionWall) || place_meeting(x,y,obJ_Collision)){
			x -= x_spd
			moving = false;
		}
	}
}

mask_index = spr_mainchara_d

if !moving{
	image_speed = 0;
	image_index = 0;
}else{
	if running {
		image_speed	= 1.5;
	}else{
		image_speed = 1;
	}
}

moving = false;




