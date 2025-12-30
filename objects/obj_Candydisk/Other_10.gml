var text_x_offset = 30;
var text_y_offset = 20;
//Create Dialogue
var Box = instance_create_depth(0,0,-100000, obj_Overworld_DialogueBox);
var Dialogue = instance_create_depth(Box.textbox_x + text_x_offset, Box.textbox_y + text_y_offset, -999999, obj_TextElement);
/////////////////

if (checked = 0){
	Dialogue.TextToDraw = "* A Candy Dish."
}
if (checked = 1){
	Dialogue.TextToDraw = "* You took a candy."
}
if (checked >= 2){
	checked = 2;
	Dialogue.TextToDraw = "* Look what you've done."
	Dialogue.TextInQueue[0] = "* You are filled with... sin."
}



checked += 1;

