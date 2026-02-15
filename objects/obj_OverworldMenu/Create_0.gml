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