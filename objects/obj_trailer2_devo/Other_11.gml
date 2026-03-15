global.Menu.ActionText = CreateActionText();
var _inst = global.Menu.ActionText;


if !threated{
	_inst.AddDialogue("* I told [REDACTED] to get out&  of my way, or else he won't&  get to see his friends again.")
	_inst.AddDialogue("* [REDACTED] didn't react.")
	threated = true;
}else{
	_inst.AddDialogue("* I told [REDACTED] that once he's&  dead, I am going after [REDACTED]&  next.")
	_inst.AddDialogue("* ...")
	_inst.AddDialogue("* [REDACTED]'s ATK increased!")
	CheckDescription[0] = "* [REDACTED] 2 ATK 1 DEF&* The weakest enemy.&* Can't use any magical item.";
}