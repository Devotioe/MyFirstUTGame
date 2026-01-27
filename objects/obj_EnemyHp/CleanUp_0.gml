global.Enemy[global.EnemyRN].alarm[0] = 1;

if instance_exists(obj_TargetField){
	obj_TargetField.destroyed = true;
}

instance_destroy(obj_TargetBar);


