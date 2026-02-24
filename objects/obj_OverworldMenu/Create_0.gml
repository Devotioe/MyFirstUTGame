opened = false;


_x1 = 0
_y1 = 0
_x2 = 0
_y2 = 0

depth = -999999;

setup = false;

enum OVERWORLD_MENU{
	SELECTION, //0
	ITEM, //1
	STAT, //2
	CELL, //3
}

state = OVERWORLD_MENU.SELECTION;

SelctionReference = 0;

prevSel = 0;

ItemSelected = false;

ItemSelectionReference = 0;

function Use(index){
	var item = GetItemData(global.Item[index]);
	scr_useItem(item, index);
}

function Drop(index){
	var item = GetItemData(global.Item[index]);
	array_delete(global.Item, index, 1);
	CreateOverworldDialogue();
	var _inst = Dialogue;
	_inst.AddDialogue("* The " + string(item.ItemName) + "&  was thrown away.")
}

function Info(index){
	var item = GetItemData(global.Item[index]);
	CreateOverworldDialogue();
	var _inst = Dialogue;
	_inst.AddDialogue(item.Description);
}