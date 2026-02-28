function scr_CreateTarget(_Weapon){
	
	Weapon = _Weapon;
	var pr = 0;
	
	global.PriorityBar = 0;
	
	
	global.BarCount = 0;
	
	var field = instance_create_depth(320, 320, -1, obj_TargetField); // Create Target
	
	var Bar_StartX = choose (0, 680);
	
	if (Weapon == "Real Knife"){
		global.BarCount = 1;
		var Bar = instance_create_depth(Bar_StartX, 320, -2, obj_TargetBar)
		Bar.hspeed = ((Bar_StartX < 320) ? 6 : -6);
		Bar.priority = pr;
		pr += 1;
	}
	
	if (Weapon == "Torn Notebook"){
		global.BarCount = 3;
	}
	
	
	
	
}