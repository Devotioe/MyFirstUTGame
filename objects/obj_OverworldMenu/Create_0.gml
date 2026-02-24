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
	array_delete(global.Item, index, 1);
	show_debug_message(global.Item)
}

function Info(index){
	
}