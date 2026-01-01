ActionText = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);

if checked {
	ActionText.TextToDraw = "* You literally checked the guy."
	ActionText.TextInQueue[0] = "* Don't you have anything better&  to do?"
}

if !checked{
	checked = true
	ActionText.TextToDraw = CheckDescription[0];
	ActionText.TextInQueue[0] = CheckDescription[1];
	ActionText.TextInQueue[1] = CheckDescription[2];
}



