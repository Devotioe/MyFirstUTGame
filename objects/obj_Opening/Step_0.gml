if !instance_exists(obj_TextElement){
	instance_destroy(self);
	global.encounterID = 999;
	room = room_battle;
}

