
//if setup == false {
//	len = random_range(50, 100);
//	prev_x = obj_soul.x;
//	prev_y = obj_soul.y;
//	setup = true;
//}

//if dir >= 360 {
//	setup = false; 
//	instance_destroy(obj_TestBullet);
//	dir = 0;
//	index = 0;
//}else{
//	cooldown --;
//}

//if cooldown <= 0 {
//	dir += 20;
//	bullet[index] = instance_create_depth( prev_x + lengthdir_x(len, dir),  prev_y + lengthdir_y(len, dir) ,-9,  obj_TestBullet);	
//	bullet[index].image_angle = point_direction(obj_TestBullet.x, obj_TestBullet.y, obj_soul.x, obj_soul.y)
//	index +=1
//	cooldown = 5;
//}



