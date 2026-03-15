// Inherit the parent event
event_inherited();

if started {
	if Event == 0{
		instance_create_depth(0, 315, -9, obj_trailer2_rotating_bone);
		Event = 1;
	}
	
	if Event == 1 && !Cooldown{
		alarm[1] = 30;
		Cooldown = true;
	}
	
}