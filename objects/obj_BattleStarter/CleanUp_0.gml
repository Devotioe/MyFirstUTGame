global.Menu = instance_create_depth(0, 0, -99, obj_Menu);
global.Manager = instance_create_depth(0, 0, -99, obj_BatlleManager);
instance_create_depth(0, 0, -9, obj_EnemyCreator);
global.BattleMusic = audio_play_sound(mus_testfight_2, 1, false);

