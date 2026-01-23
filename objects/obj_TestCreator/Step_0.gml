if (event == 0){
	CreateBubbleDialogue(50, 100)
	dialogue.TextToDraw = "1 Test 1";
	dialogue.AddDialogue("1 Test 2")
	dialogue.AddDialogue("1 Test 3")
	event = 0.5;
}

if (event == 0.5){
	if !instance_exists(dialogue){
		event = 1;
	}
}

if (event == 1){
	CreateBubbleDialogue(50, 150)
	dialogue.TextToDraw = "2 Test 1";
	dialogue.AddDialogue("1 Test 2")
	dialogue.AddDialogue("2 Test 3")
	event = 1.5;
}