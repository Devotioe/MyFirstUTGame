global.Menu.ActionText = CreateActionText();
var _inst = global.Menu.ActionText;

_inst.Talker = "UI";

for (var i = 0 ; i < array_length(CheckDescription) ; i ++){
	_inst.AddDialogue(CheckDescription[i]);	
}





