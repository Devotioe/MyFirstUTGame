function ItemHeal(_hp, _item){
	var StartingHp = global.PlayerHp;
	global.PlayerHp += _hp;
	audio_play_sound(snd_heal_c, 20, false);
	
	var _inst;
	
	if (room == room_battle){
		_inst = instance_create_depth(global.Menu.box_basicshift, 270, -1, obj_TextElement);
		global.Menu.ActionText = _inst;
	}
	else{
		CreateOverworldDialogue();
		_inst = Dialogue;
	}
	
	_inst.CanAdvance = true;
	_inst.TextToDraw = "* You used the " + string(_item.ItemName) + "!&";

	if (global.PlayerHp > global.PlayerMaxHp) { // maxed out
		_inst.TextToDraw += "* Your HP was maxed out!";
		global.PlayerHp = global.PlayerMaxHp; // clamp the hp 
	}else{
		_inst.TextToDraw += "* You recovered " + string(global.PlayerHp - StartingHp)+ " HP!";
	}
	
	global.PlayerHp = clamp(global.PlayerHp, 0, global.PlayerMaxHp);
}

function ItemEquip(_itemID){
	audio_play_sound(snd_heal_c, 1, false);
}

function GetItemData(_id){
	var myID = string(_id);
	return global.ItemData[$ myID];
}

function Item(_name, _bname, _desc, _func) constructor {
	ItemName = _name;
	BName = _bname;
	Description = _desc;
	Function = _func;
	Keep = false;
}

global.ItemData = {
	"1" : new Item ("Legendary Hero", "L.Hero","* Sandwich shaped like a sword.&* Increases ATTACK when eaten.", function(_me){ ItemHeal(40, _me); }),
	"2" : new Item ("Butterscotch Pie", "B.Pie", "* Butterscotch-cinnamon pie, one slice.", function(_me){ ItemHeal(99, _me); }),
	"3" : new Item ("Snowman Piece", "SnowPiece", "* Please take this to the ends of the earth.", function(_me){ ItemHeal(45, _me); }),
}