_x = global.Enemy[0].x + 100 
_y = global.Enemy[0].y - 20
	
if event == 0 {
	CreateBubbleDialogue(_x, _y);
	event = 0.5
	Dialogue.AddDialogue("Test 1")
	Dialogue.AddDialogue("Test 2")
}

var finished = true;
	
for ( var i = 0 ; i < array_length(global.Enemy) ; i ++ ) {
	if (!global.Enemy[i].spared || !global.Enemy[i].killed){
		if instance_exists(global.Enemy[i].Dialogue){
			finished = false;
		}
	}
}

if finished == true {
	instance_create_depth(0,0, 99, obj_atk_Test_1);
}