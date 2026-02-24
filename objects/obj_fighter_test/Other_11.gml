var _inst =  instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
global.Menu.ActionText = _inst;

_inst.AddDialogue("* You threatened the enemy.");
_inst.AddDialogue("* The enemy in now spareable.");
CanSpare = true;