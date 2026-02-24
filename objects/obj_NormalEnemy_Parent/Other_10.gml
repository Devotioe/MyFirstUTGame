var _inst =  instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
global.Menu.ActionText = _inst;



for (var i = 0 ; i < array_length(CheckDescription) ; i ++){
	_inst.AddDialogue(CheckDescription[i]);	
	_inst.Talker = "UI";
}





