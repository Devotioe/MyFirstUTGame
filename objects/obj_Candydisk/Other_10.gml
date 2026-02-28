var text_x_offset = 30;
var text_y_offset = 20;
//Create Dialogue
var Dialogue = CreateOverworldDialogue();
/////////////////

if (checked = 0){
	Dialogue.AddDialogue("* A Candy Dish.");
}

if (checked = 1){
	if (CheckIfItemFull() == false){
		Dialogue.AddDialogue("* You took a piece of candy.");	
		AddItem(4);
	}else{
		Dialogue.AddDialogue("* You tried to take a piece of&  candy.&* But your inventory is full.");
		exit;
	}
	
}

if (checked >= 2){
	checked = 2;
	Dialogue.AddDialogue("* Look what you've done.");
	Dialogue.AddDialogue("* You are filled with... sin.");
}

checked += 1;

