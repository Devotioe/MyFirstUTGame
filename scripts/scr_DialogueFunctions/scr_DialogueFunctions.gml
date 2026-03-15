function CreateBubbleDialogue(_x, _y){
	var text_x = _x;
	var text_y = _y;
	var _inst = instance_create_depth(text_x, text_y, -99, obj_TextElement);
	_inst.IsSpeechBubble = true;
	_inst.CanAdvance = true;
	return _inst;
}

function CreateCutsceneBubbleDialogue(_x, _y){
	var text_x = _x;
	var text_y = _y;
	var _inst = instance_create_depth(text_x, text_y, -99, obj_TextElement);
	_inst.IsSpeechBubble = true;
	_inst.CanAdvance = true;
	_inst.CanSkip = false;
	return _inst;
}

function CreateActionText(){
	var _inst = instance_create_depth(global.Menu.box_basicshift, 270, -1, obj_TextElement);
	_inst.CanAdvance = true;
	_inst.CanSkip = true;
	_inst.Talker = "UI";
	return _inst;
}

function CreateOverworldDialogue(){
	var Box = instance_create_depth(0,0,-100000, obj_Overworld_DialogueBox);
	var text_x_offset = 30;
	var text_y_offset = 20;
	var _inst = instance_create_depth(Box.textbox_x + text_x_offset, Box.textbox_y + text_y_offset, -999999, obj_TextElement);
	_inst.CanAdvance = true;
	_inst.Talker = "Normal"
	return _inst;
}

function CreateCutsceneOverworldDialogue(){
	var Box = instance_create_depth(0,0,-100000, obj_Overworld_DialogueBox);
	var text_x_offset = 30;
	var text_y_offset = 20;
	var _inst = instance_create_depth(Box.textbox_x + text_x_offset, Box.textbox_y + text_y_offset, -999999, obj_TextElement);
	_inst.CanSkip = false;
	_inst.CanAdvance = false;
	return _inst;
}