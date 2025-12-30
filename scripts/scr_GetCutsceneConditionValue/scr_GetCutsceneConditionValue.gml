function scr_GetCutsceneConditionValue(Condition){
	if ds_map_exists(global.CutsceneData, Condition){
		return (ds_map_find_value(global.CutsceneData, Condition))
	}
	return 0;
}