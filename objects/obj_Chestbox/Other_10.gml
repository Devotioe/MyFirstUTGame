if array_length(global.Item) > 0 || array_length(MyInventory) > 0 {	
	opened = true;
	depth = -99999999;
	global.UISelection = 0;
	if array_length(global.Item) > 0 {
		side = 0;
	}
	else {
		side = 1;
	}
}else{
	Dialogue = CreateOverworldDialogue();
	Dialogue.AddDialogue("* You tried to open the box...");
	Dialogue.AddDialogue("* But it won't open.");
}