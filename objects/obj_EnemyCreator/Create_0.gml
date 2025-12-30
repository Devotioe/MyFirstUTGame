//

enemy_depth = -2;
for ( var i = 0 ; i <= (obj_BattleStarter.enemyCounts - 1) ; i++ ){
	switch (obj_BattleStarter.enemyID[i]){
		case 1: // TEST 1 
		global.Enemy[i] = instance_create_depth(320, 80, enemy_depth, obj_fighter_test);
		break;
		case 2: // TEST 2
		global.Enemy[i] = instance_create_depth(500, 150, enemy_depth, obj_fighter_test_2);
		break;
		case 999:
		global.Enemy[i] = instance_create_depth(230, -5, enemy_depth, obj_fighter_roaringknight);
	}
	if ( i = obj_BattleStarter.enemyCounts - 1){
		instance_destroy(self);
	}
}