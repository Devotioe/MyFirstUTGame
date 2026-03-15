// Inherit the parent event
event_inherited();

if started {
	if Event == 0{
		if diff != 2{
			instance_create_depth(0, 315, -9, obj_trailer2_rotating_bone);
		}
		if diff = 1 && instance_exists(obj_trailer2_rotating_bone){
			obj_trailer2_rotating_bone.r_spd = 10;
		}
		Event = 1;
	}
	
	if Event == 1 && !Cooldown{
		if  diff != 1 {
			alarm[1] = bone_cd;
			Cooldown = true;
		}
	}
	
}