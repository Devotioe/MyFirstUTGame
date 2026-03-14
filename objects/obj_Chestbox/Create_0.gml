// Inherit the parent event
event_inherited();

opened = false;

side = 0;

MyInventory = [2, 3, 10, 1];

prevSel = 0;



Message = 0;

function SwitchSide(){
	if side == 0 {
		side = 1;	
	}else{
		side = 0;	
	}
}