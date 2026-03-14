function ItemHeal(_item){
	var _inst;
	var item = _item;
	
	var StartingHp = global.PlayerHp;
	var hp = item.HealHP;
	
	//audio_play_sound(snd_swallow, 1, false)
	var TargetHp = global.PlayerHp + hp;
	
	scr_HealPlayer(hp);
	

	
	if (room == room_battle){
		global.Menu.ActionText = CreateActionText();
		_inst = global.Menu.ActionText;
		_inst.Talker = "UI";
	}
	else{
		Dialogue = CreateOverworldDialogue();
		_inst = Dialogue;
		_inst.Talker = "Normal";
	}
	
	
	_inst.CanAdvance = true;
	_inst.AddDialogue("* You used the " + string(item.ItemName) + "!");
	
	if (item.ID = "1"){
		_inst.AddLine("* Your ATTACK increased by 4!");
		if (room == room_battle){
			global.PlayerAtk += 4;	
		}
	}
	
	if (TargetHp > global.PlayerMaxHp) { // maxed out
		_inst.AddLine("* Your HP was maxed out!");
	}else{
		_inst.AddLine("* You recovered " + string(TargetHp - StartingHp)+ " HP!");
	}
	
}

function ArmorEquip(_item){
	audio_play_sound(snd_item, 1, false);
	var item = _item;
	var _temp = global.PlayerArmor;
	array_push(global.Item, _temp);
	global.PlayerArmor = item.ID
	global.ArmorDEF = item.AddDEF;
	
	if (room == room_battle){
		global.Menu.ActionText = CreateActionText();
		_inst = global.Menu.ActionText;
		_inst.Talker = "UI";
	}
	else{
		Dialogue = CreateOverworldDialogue();
		_inst = Dialogue;
		_inst.Talker = "Normal";
	}
	
	_inst.CanAdvance = true;
	_inst.AddDialogue("* You equipped the " + string(item.ItemName) + "!");
	
}

function WeaponEquip(_item){
	audio_play_sound(snd_item, 1, false);
	var item = _item;
	var _temp = global.PlayerWeapon;
	array_push(global.Item, _temp);
	global.PlayerWeapon = item.ID
	global.WeaponATK = item.AddATK;
	
	if (room == room_battle){
		global.Menu.ActionText = CreateActionText();
		_inst = global.Menu.ActionText;
		_inst.Talker = "UI";
	}
	else{
		Dialogue = CreateOverworldDialogue();
		_inst = Dialogue;
		_inst.Talker = "Normal";
	}
	
	
	_inst.CanAdvance = true;
	_inst.AddDialogue("* You equipped the " + string(item.ItemName) + "!");
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

function ItemStruct (_name, _bname, _desc) constructor {
	ItemName = _name;
	BName = _bname;
	Description = _desc;
	Function = -1;
	Keep = false;
	ID = 0;
}

function Consumeable (_name, _bname, _desc, _hp) : ItemStruct(_name, _bname, _desc) constructor {
	Function = function(me){ ItemHeal(me)};
	HealHP = _hp;
}

function Weapon (_name, _bname, _desc, _atk) : ItemStruct(_name, _bname, _desc) constructor {
	Function = function(me){ WeaponEquip(me)};
	AddATK = _atk;
}

function Armor (_name, _bname, _desc, _def) : ItemStruct(_name, _bname, _desc) constructor {
	Function = function(me){ ArmorEquip(me)};
	AddDEF = _def;
}

global.ItemData = {
	"0" : new Consumeable ("Default", "Default", "* Default", 0),
	"1" : new Consumeable ("Legendary Hero", "L.Hero","* Sandwich shaped like a sword.&* Increases ATTACK when eaten.", 40),
	"2" : new Consumeable ("Butterscotch Pie", "B.Pie", "* Butterscotch-cinnamon pie,&  one slice.", 99),
	"3" : new Consumeable ("Snowman Piece", "SnowPiece", "* Please take this to&  the ends of the earth.", 45),
	"4" : new Consumeable ("Monster Candy", "MnstrCndy", "* Has a distinct, non-licorice flavor.", 10),
	"5" : new Weapon ("Toy Knife", "ToyKnife", "* Has a distinct, non-licorice flavor.", 10),
	"6" : new Weapon ("Stick", "Stick", "* Has a distinct, non-licorice flavor.", 1),
	"7" : new Armor ("Bandage", "Bandage", "* Has a distinct, non-licorice flavor.", 1),
	"8" : new Armor ("Faded Ribbon", "Faded Ribbon", "* Has a distinct, non-licorice flavor.", 1),
}

for ( var i = 0 ; i < struct_names_count(global.ItemData) ; i ++ ){
	var _i = string(i)
	global.ItemData[$ _i].ID = i;	
}
