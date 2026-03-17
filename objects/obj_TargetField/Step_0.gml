var select_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));


if (image_alpha < 1){
	image_alpha += ( 1 - image_alpha)/10;
}
if (image_xscale < 1){
	image_xscale += ( 1 - image_xscale)/8 ;
}

	if select_key && !attacked {
		global.PriorityBar += 1;
		if instance_exists(obj_TargetBar){
			if ( obj_TargetBar.x < 605 && obj_TargetBar.hspeed > 0) || ( obj_TargetBar.x > 30 && obj_TargetBar.hspeed < 0 ){
				hitbar += 1;
			}
		}
	}

if global.PriorityBar >= global.BarCount && !attacked {
	if (hitbar > 0){
		if (global.PlayerWeapon == 5 || global.PlayerWeapon == 6 || global.PlayerWeapon == 9){ // create slice for knife
			var slice = instance_create_depth(global.Enemy[global.EnemyRN].x, 140, -10, obj_Slice);
			audio_play_sound(snd_slash, 20, false);
		}
	}
	attacked = true;
	alarm[0] = 5; 
}



//for animation
if destroyed {
	if image_xscale > 0 {
		image_xscale -= 0.1;
	}
	image_alpha -= 0.1;
	if (image_alpha <= 0){
		instance_destroy(self)
	}
}

