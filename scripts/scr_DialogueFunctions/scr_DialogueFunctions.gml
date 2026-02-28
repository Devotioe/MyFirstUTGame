function CreateBubbleDialogue(_x, _y){
	text_x = _x;
	text_y = _y;
	var _inst = instance_create_depth(text_x, text_y, -99, obj_TextElement);
	_inst.IsSpeechBubble = true;
	_inst.CanAdvance = true;
	return _inst;
}

function CreateCutsceneBubbleDialogue(_x, _y){
	text_x = _x;
	text_y = _y;
	Dialogue = instance_create_depth(text_x, text_y, -99, obj_TextElement);
	_inst.IsSpeechBubble = true;
	_inst.CanAdvance = true;
	_inst.CanSkip = false;
}

function CreateActionText(){
	ActionText = instance_create_depth(global.Menu.box_basicshift, 270, -1, obj_TextElement);
	ActionText.CanAdvance = true;
	ActionText.CanSkip = true;
	return ActionText;
}

function CreateOverworldDialogue(){
	var Box = instance_create_depth(0,0,-100000, obj_Overworld_DialogueBox);
	var text_x_offset = 30;
	var text_y_offset = 20;
	Dialogue = instance_create_depth(Box.textbox_x + text_x_offset, Box.textbox_y + text_y_offset, -999999, obj_TextElement);
	Dialogue.CanAdvance = true;
}

function CreateCutsceneOverworldDialogue(){
	var Box = instance_create_depth(0,0,-100000, obj_Overworld_DialogueBox);
	var text_x_offset = 30;
	var text_y_offset = 20;
	Dialogue = instance_create_depth(Box.textbox_x + text_x_offset, Box.textbox_y + text_y_offset, -999999, obj_TextElement);
	Dialogue.CanSkip = false;
	Dialogue.CanAdvance = false;
}