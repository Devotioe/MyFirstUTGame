var select_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
var quit_key = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"));

//setup
if (global.BattleMenu = MENU.SETUP){
	global.PriorityBar = 0;
	var enemyCounts = array_length(global.Enemy);
	var item_count = array_length(global.Item);
	var item_count_l_1 = 0;
	var item_count_r_1 = 0;
	var item_count_l_2 = 0;
	var item_count_r_2 = 0;
	// Fight and Act//
	PlayerDialogue.TextToDraw = GetEnemyDialogue(); //For box texts
	if (GetEnemyDialogue() == undefined){
		PlayerDialogue.TextToDraw = "* Let's just get this over with.";
	}
	PlayerDialogue.CanAdvance = false;
	PlayerDialogue.CanSkip = false;
	PlayerDialogue.TextLength = 0;
	if (PlayerDialogue.IsWriting == false){
		PlayerDialogue.IsWriting = true;
	}
	Fight.TextToDraw = "";
	Act.TextToDraw = "";
	for ( var i = 0; i < enemyCounts ; i ++){
		if (global.Enemy[i].CanSpare == true){
			Fight.TextToDraw += "~Y";
			Act.TextToDraw += "~Y";
		}
		Fight.TextToDraw += "* " + global.Enemy[i].MyName + "~D&";
		Act.TextToDraw += "* " + global.Enemy[i].MyName + "~D&";
	}
	Fight.TextLength = string_length(Fight.TextToDraw);
	Fight.CanAdvance = false;
	ActML.TextToDraw = "";
	ActMR.TextToDraw = "";
	Act.TextLength = string_length(Act.TextToDraw);
	Act.CanAdvance = false;
	ActML.CanAdvance = false;
	ActMR.CanAdvance = false;
	//Item//////////////
	ItemL_1.TextToDraw = "";
	ItemR_1.TextToDraw = "";
	for ( var i = 0 ; i < item_count ; i += 2 ){
		if (i <= 2){
			ItemL_1.TextToDraw += "* " + GetItemData(global.Item[i]).BName + "&"; 
			item_count_l_1 ++;
		}
	}
	for ( var i = 1 ; i < item_count ; i += 2 ){
		if (i <= 3){
			ItemR_1.TextToDraw += "* " + GetItemData(global.Item[i]).BName + "&"; 
			item_count_r_1++
		}
	}
	item_total_1 = item_count_l_1 + item_count_r_1;
	ItemL_1.CanAdvance = false;
	ItemL_1.TextLength = string_length(ItemL_1.TextToDraw);
	ItemR_1.CanAdvance = false;
	ItemR_1.TextLength = string_length(ItemR_1.TextToDraw);
	ItemL_2.TextToDraw = "";
	ItemR_2.TextToDraw = "";
	for ( var i = 4 ; i < array_length(global.Item) ; i += 2 ){
		if (i <= 6){
			ItemL_2.TextToDraw += "* " + GetItemData(global.Item[i]).BName + "&"; 
			item_count_l_2 ++;
		}
	}
	for ( var i = 5 ; i < array_length(global.Item) ; i += 2 ){
		if (i <= 7){
			ItemR_2.TextToDraw += "* " + GetItemData(global.Item[i]).BName + "&"; 
			item_count_r_2 ++;
		}
	}
	item_total_2 = item_count_l_2 + item_count_r_2;
	ItemL_2.CanAdvance = false;
	ItemL_2.TextLength = string_length(ItemL_2.TextToDraw);
	ItemR_2.CanAdvance = false;
	ItemR_2.TextLength = string_length(ItemR_2.TextToDraw);
	Page.TextLength = 6;
	Page.CanAdvance = false;
	ItemPage = 1;
	
	//Mercy////////////
	Mercy.TextToDraw = "";
	for (var i = 0 ; i < enemyCounts ; i ++){
		if (global.Enemy[i].CanSpare == true){
			Mercy.TextToDraw += "~Y";
			break;
		}
	}
	Mercy.TextToDraw += "* Spare~D&"
	if (_CanFlee == true){ //can flee or not
		Mercy.TextToDraw += "* Flee"
	}
	Mercy.CanAdvance = false;
	Mercy.TextLength = string_length(Mercy.TextToDraw);
	Page.CanAdvance = false;
	global.BattleMenu = MENU.SELECTION; //turn of the switch
}

//For texts that change dynamically
if (global.BattleMenu > MENU.SELECTION){
	Page.TextToDraw = "Page " + string(ItemPage);
	for ( var i = 0 ; i < array_length(global.Enemy[global.EnemyRN].Act) ; i +=2){
		ActML.TextToDraw =  "* " + global.Enemy[global.EnemyRN].Act[i];
	}
	for ( var i = 1 ; i < array_length(global.Enemy[global.EnemyRN].Act) ; i +=2){
		ActMR.TextToDraw =  "* " + global.Enemy[global.EnemyRN].Act[i];
	}
	ActMR.TextLength = string_length(ActMR.TextToDraw);
	ActML.TextLength = string_length(ActML.TextToDraw);
}

//init every frame, make evey menu invisible
	PlayerDialogue.visible = false;
	Fight.visible = false;
	Act.visible = false;
	ActML.visible = false;
	ActMR.visible = false;
	ItemL_1.visible = false;
	ItemR_1.visible = false;
	ItemL_2.visible = false;
	ItemR_2.visible = false;
	Page.visible = false;
	Mercy.visible = false;

//make certain manu visible according to menu status
switch (global.BattleMenu){ 
	case MENU.SELECTION:
	if (global.bulletboard.current_l < 40 || global.bulletboard.current_r > 600){
	PlayerDialogue.visible = true;
	}
	break;
	case MENU.FIGHT: //Fight choosing targets
	Fight.visible = true;
	break;
	case MENU.ACT: //Act choosing targets
	Act.visible = true;
	break;
	case MENU.ACT_SELECTION: //Act options
	ActML.visible = true;
	ActMR.visible = true;
	break;
	case MENU.ITEM:
	if array_length(global.Item) > 4{
		Page.visible = true
	}
	if (ItemPage = 1){
		ItemL_1.visible = true;
		ItemR_1.visible = true;
	}
	else{
		ItemL_2.visible = true;
		ItemR_2.visible = true;
	}
	break;
	case MENU.MERCY:
	Mercy.visible = true;
	break;
}

//advancing Menu
if select_key && global.UISelection > -1 {
	
	switch global.BattleMenu { 
		
		case MENU.SELECTION: // advance to each function, FIGHT, ACT, ITEM, MERCY
		audio_play_sound(snd_select, 20, false);
		
		global.BattleMenu = (global.UISelection + 1); //math
		
		BelowUIReference = global.UISelection; //memorize the previous selection
		global.UISelection = 0; //Can select enemy 
		
		if (array_length(global.Item) < 1 && global.BattleMenu == 3){ 
			global.BattleMenu = MENU.SELECTION;
			global.UISelection = 2;
			exit;
		}// prevent entering item if don't hold items
		break;
		
		case MENU.FIGHT: //From selecting enemy to Target Field
		EnemySelectionReference = global.UISelection; //remember the selection
		global.EnemyRN = EnemySelectionReference; //target enemy with local variable
		scr_CreateTarget(global.PlayerWeapon);
		global.BattleMenu = MENU.HIDE; // TARGET FIELD
		global.UISelection = -1; // disable select
		break;
		
		case MENU.ACT: //From selecting enemy to act
		EnemySelectionReference = global.UISelection; //remember the selection
		global.EnemyRN = EnemySelectionReference; //target enemy with local variable
		global.BattleMenu = MENU.ACT_SELECTION; // ACT options
		global.UISelection = 0; // Can select acts
		break;
		
		case MENU.ACT_SELECTION: //Act commands
		with (global.Enemy[global.EnemyRN]){ //execute enemy's user event
			event_user(global.UISelection);
		}
		StateToAction()
		break;
		
		case MENU.ITEM: //Item
		var ItemSelection; //selection based on page

		if (global.Menu.ItemPage == 1){
			ItemSelection = global.UISelection;
		}
		else{
			ItemSelection = global.UISelection + 4;
		}
		
		global.UISelection = -1; //reset
		
		var item = GetItemData(global.Item[ItemSelection]);
		
		scr_useItem(item, ItemSelection); //script for using item, determine which item to be used in this script
		StateToAction()
		break;
		
		case MENU.MERCY: //Mercy
		if (global.UISelection == 0){
			scr_Spare();
		}else{
			scr_Flee();
		}
		StateToAction()
		break;
	}
}

//quitting menu
if quit_key && global.UISelection > -1{
	if (global.BattleMenu = MENU.FIGHT || global.BattleMenu = MENU.ACT || global.BattleMenu = MENU.ITEM || global.BattleMenu = MENU.MERCY){
		global.BattleMenu = MENU.SELECTION;
		global.UISelection = BelowUIReference;
		ItemPage = 1;
		PlayerDialogue.TextLength = 0;
		PlayerDialogue.IsWriting = true;
		PlayerDialogue.CurrentDelay = 0;
	}else if (global.BattleMenu > MENU.SELECTION){
		switch global.BattleMenu {
			case MENU.ACT_SELECTION:
			global.BattleMenu = MENU.ACT;
			break;
		}
		global.UISelection = EnemySelectionReference;
	}
}
