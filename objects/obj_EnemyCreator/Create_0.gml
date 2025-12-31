enemy_depth = -2;

var _EcData = scr_searchEcounterData(); //local data
var enemyCounts = array_length(_EcData.enemyID);

for ( var i = 0 ; i < enemyCounts ; i++ ){
	
	var EnemyID = _EcData.enemyID[i];
	var _EnemyData = global.EnemyData[$ EnemyID];
	
	ObjRef = _EnemyData.ObjRef;
	StartX = _EnemyData.StartX
	StartY = _EnemyData.StartY
	
	var _inst = instance_create_depth(StartX, StartY, enemy_depth, ObjRef); //Create Enemy
	global.Enemy[i] = _inst; //giving reference to global.Enemy
	
	_inst.MyName = _EnemyData.MyName;
	_inst.MyMaxHp = _EnemyData.MyMaxHp;
	_inst.MyAtk = _EnemyData.MyAtk;
	_inst.MyDef = _EnemyData.MyDef;
	_inst.ShowBar = _EnemyData.ShowBar;
	_inst.CanSpare = _EnemyData.CanSpare;
	_inst.CanFlee = _EnemyData.CanFlee;
	_inst.MyHp = _inst.MyMaxHp;
	
}

instance_destroy(self);