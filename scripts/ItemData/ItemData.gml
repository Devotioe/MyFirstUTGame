function ItemHeal(_hp, _item){
	var StartingHp = global.PlayerHp;
	global.PlayerHp += _hp;
	audio_play_sound(snd_heal_c, 20, false);
	
	var _inst;
	var item = _item;
	
	if (room == room_battle){
		global.Menu.ActionText = CreateActionText();
		_inst = global.Menu.ActionText;
	}
	else{
		Dialogue = CreateOverworldDialogue();
		_inst = Dialogue;
	}
	
	_inst.Talker = "UI";
	_inst.CanAdvance = true;
	_inst.AddDialogue("* You used the " + string(item.ItemName) + "!&");
	
	if (item.ID = "1"){
		_inst.AddLine("* Your ATTACK increased by 4!&");
		if (room == room_battle){
			global.PlayerAtk += 4;	
		}
	}
	
	if (global.PlayerHp > global.PlayerMaxHp) { // maxed out
		_inst.TextToDraw += "* Your HP was maxed out!";
		global.PlayerHp = global.PlayerMaxHp; // clamp the hp 
	}else{
		_inst.TextToDraw += "* You recovered " + string(global.PlayerHp - StartingHp)+ " HP!";
	}
	
	global.PlayerHp = clamp(global.PlayerHp, 0, global.PlayerMaxHp);
}

function ItemEquip(_id){
	audio_play_sound(snd_heal_c, 1, false);
}

function GetItemData(_id){
	var myID = string(_id);
	return global.ItemData[$ myID];
}

function AddItem(_id){
	if (array_length(global.Item) < 8){
		array_push(global.Item, _id);
		audio_play_sound(snd_item, 1, false);
	}else{
		Dialogue = CreateOverworldDialogue();
		Dialogue.AddDialogue("Your inventory is full.");
	}
}

function CheckIfItemFull(){
	if (array_length(global.Item) < 8){
		return false;	
	}else{
		return true;	
	}
}

function ItemStruct (_name, _bname, _desc, _func) constructor {
	ItemName = _name;
	BName = _bname;
	Description = _desc;
	Function = _func;
	Keep = false;
	ID = 0;
}

global.ItemData = {
	"0" : new ItemStruct ("Default", "Default", "* Default", function(me){ ItemHeal(0, me); }),
	"1" : new ItemStruct ("Legendary Hero", "L.Hero","* Sandwich shaped like a sword.&* Increases ATTACK when eaten.", function(me){ ItemHeal(40, me); }),
	"2" : new ItemStruct ("Butterscotch Pie", "B.Pie", "* Butterscotch-cinnamon pie,&  one slice.", function(me){ ItemHeal(99, me); }),
	"3" : new ItemStruct ("Snowman Piece", "SnowPiece", "* Please take this to&  the ends of the earth.", function(me){ ItemHeal(45, me); }),
	"4" : new ItemStruct ("Monster Candy", "MnstrCndy", "* Has a distinct, non-licorice flavor.", function(me){ ItemHeal(10, me); }),
}

for ( var i = 0 ; i < struct_names_count(global.ItemData) ; i ++ ){
	var _i = string(i)
	global.ItemData[$ _i].ID = i;	
}
