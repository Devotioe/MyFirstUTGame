//

enemy_depth = -2;
EcID = obj_BattleStarter._ecID;

for ( var i = 0 ; i <= (obj_BattleStarter.enemyCounts - 1) ; i++ ){
	
	EnemyID = string(global.encounterData[$ EcID].enemyID[i]);
	ObjRef = global.EnemyData[$ EnemyID].ObjRef;
	StartX = global.EnemyData[$ EnemyID].StartX
	StartY = global.EnemyData[$ EnemyID].StartY
	
	var _inst = instance_create_depth(StartX, StartY, enemy_depth, ObjRef); //Create Enemy
	global.Enemy[i] = _inst;
	
	_inst.MyName = global.EnemyData[$ EnemyID].MyName;
	_inst.MyMaxHp = global.EnemyData[$ EnemyID].MyMaxHp;
	_inst.MyAtk = global.EnemyData[$ EnemyID].MyAtk;
	_inst.MyDef = global.EnemyData[$ EnemyID].MyDef;
	_inst.ShowBar = global.EnemyData[$ EnemyID].ShowBar;
	_inst.CanSpare = global.EnemyData[$ EnemyID].CanSpare;
	_inst.CanFlee = global.EnemyData[$ EnemyID].CanFlee;
	_inst.MyHp = global.Enemy[i].MyMaxHp;
}

instance_destroy(self);