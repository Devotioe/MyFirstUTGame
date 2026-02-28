//Create interaction box
if Ibox == noone {
	Ibox = instance_create_depth(x, y, depth -1, obj_Interaction);
	Ibox.Host = _Host; //Set the host to itself
}else {
	Ibox.x = x;
	Ibox.y = y;	
}


