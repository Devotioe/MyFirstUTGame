//Here draws the damage writer.
var DamageWriter = instance_create_depth(x, y - 30, -12, obj_EnemyHp);

DamageWriter.MyHp = MyHp; 
DamageWriter.MyCurrentHp = MyHp;
DamageWriter.MyHpToBe = MyHp - global.Damage;
DamageWriter.MyMaxHp = MyMaxHp;
DamageWriter.Damage = global.Damage;

if (global.Damage <= 0){
	DamageWriter.ShowBar = false;
	DamageWriter.Damage = "MISS";
}

else{
	MyHp -= global.Damage;
	audio_play_sound(snd_damage, 20, false);
	ShakeEffect = 0.8 * global.Damage;
	ShakeEffect = clamp(ShakeEffect, 0 , 50)
}