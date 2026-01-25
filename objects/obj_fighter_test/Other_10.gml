var _inst =  instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
global.Menu.ActionText = _inst;

if checked {
	_inst.TextToDraw = "* You literally checked the guy."
	_inst.TextInQueue[0] = "* Don't you have anything better&  to do?"
}

if !checked{
	checked = true
	_inst.TextToDraw = CheckDescription[0];
	_inst.TextInQueue[0] = CheckDescription[1];
	_inst.TextInQueue[1] = CheckDescription[2];
}



