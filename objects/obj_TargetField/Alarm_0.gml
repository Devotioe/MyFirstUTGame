



if (global.Damage > 0) { //only execute if damage > 0
	global.Enemy[global.EnemyRN].alarm[1] = 60; // Damage Writer
}

if (global.Damage <= 0){ //MISS OR 0
	global.Enemy[global.EnemyRN].alarm[1] = 1;
}


