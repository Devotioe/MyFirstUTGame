attackToSpawn = scr_chooseAttack();

_attackInst = instance_create_depth(0, 0, -9, attackToSpawn);

duration = _attackInst.duration

alarm [0] = duration;

