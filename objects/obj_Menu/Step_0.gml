var select_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
var quit_key = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"));


//setup
if (global.BattleMenu = -1){
	global.PriorityBar = 0;
	var item_count_l_1 = 0;
	var item_count_r_1 = 0;
	var item_count_l_2 = 0;
	var item_count_r_2 = 0;
	// Fight and Act//
	PlayerDialogue.TextToDraw = GetEnemyDialogue(); //For box texts
	PlayerDialogue.CanAdvance = false;
	PlayerDialogue.CanSkip = false;
	PlayerDialogue.TextLength = 0;
	if (PlayerDialogue.IsWriting == false){
		PlayerDialogue.IsWriting = true;
	}
	Fight.TextToDraw = "";
	Act.TextToDraw = "";
	for ( var i = 0; i < array_length(global.Enemy) ; i ++){
		if (global.Enemy[i].CanSpare == true){
			Fight.TextToDraw += "~Y";
			Act.TextToDraw += "~Y";
		}
		Fight.TextToDraw += "* " + global.Enemy[i].MyName + "&";
		Act.TextToDraw += "* " + global.Enemy[i].MyName + "&";
		if (array_length(global.Enemy) > 1){ //Check if more than 1 enemy
			if (global.Enemy[i+1].CanSpare == true){
				Fight.TextToDraw += "~Y"; //add yellow to the next enemy
				Act.TextToDraw += "~Y"; //add yellow to the next enemy
			}else{
				Fight.TextToDraw += "~D"; //set to normal
				Act.TextToDraw += "~D"; //set to normal
			}
		}
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
	for ( var i = 0 ; i < array_length(global.Item) ; i += 2 ){
		if (i <= 2 && global.Item[i] != ""){
			ItemL_1.TextToDraw += "* " + global.Item[i] + "&"; 
			item_count_l_1 ++;
		}
	}
	for ( var i = 1 ; i < array_length(global.Item) ; i += 2 ){
		if (i <= 3 && global.Item[i] != ""){
			ItemR_1.TextToDraw += "* " + global.Item[i] + "&"; 
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
		if (i <= 6 && global.Item[i] != ""){
			ItemL_2.TextToDraw += "* " + global.Item[i] + "&"; 
			item_count_l_2 ++;
		}
	}
	for ( var i = 5 ; i < array_length(global.Item) ; i += 2 ){
		if (i <= 7 && global.Item[i] != ""){
			ItemR_2.TextToDraw += "* " + global.Item[i] + "&"; 
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
	if (global.Enemy[0].CanSpare == true){
		Mercy.TextToDraw += "~Y";
	}
	Mercy.TextToDraw += "* Spare~D&"
	if (global.battle_fleeable == true){
		Mercy.TextToDraw += "* Flee"
	}
	Mercy.CanAdvance = false;
	Mercy.TextLength = string_length(Mercy.TextToDraw);
	Page.CanAdvance = false;
	global.BattleMenu = 0; //turn of the switch
}


//For texts that change dynamically
if (global.BattleMenu > 0){
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
if instance_exists(PlayerDialogue){
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
}

//make certain manu visible according to menu status
switch (global.BattleMenu){ //init the size of box
	case 0:
	if (global.bulletboard.current_l < 40 || global.bulletboard.current_r > 600){
	PlayerDialogue.visible = true;
	}
	break;
	case 1: //Fight choosing targets
	Fight.visible = true;
	break;
	case 2: //Act choosing targets
	Act.visible = true;
	break;
	case 2.5: //Act options
	ActML.visible = true;
	ActMR.visible = true;
	break;
	case 3:
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
	case 4:
	Mercy.visible = true;
	break;
}

//advancing Menu
if select_key && global.UISelection > -1 {
	
	switch global.BattleMenu { 
		
		case 0: // advance to each function, FIGHT, ACT, ITEM, MERCY
		audio_play_sound(snd_select, 20, false);
		global.BattleMenu = (global.UISelection + 1); //math
		BelowUIReference = global.UISelection; //memorize the previous selection
		global.UISelection = 0; //Can select enemy 
		if (array_length(global.Item) < 1 && global.BattleMenu == 3){ // prevent entering item
			global.BattleMenu = 0;
			global.UISelection = 2;
			exit;
		}		
		break;
		
		case 1: //From selecting enemy to Target Field
		EnemySelectionReference = global.UISelection; //remember the selection
		global.EnemyRN = EnemySelectionReference; //target enemy with local variable
		CreateTarget(global.PlayerWeapon);
		global.BattleMenu = 1.5; // TARGET FIELD
		global.UISelection = -1; // disable select
		break;
		
		case 2: //From selecting enemy to act
		EnemySelectionReference = global.UISelection; //remember the selection
		global.EnemyRN = EnemySelectionReference; //target enemy with local variable
		global.BattleMenu = 2.5; // ACT options
		global.UISelection = 0; // Can select acts
		break;
		
		case 2.5: //Act commands
		with (global.Enemy[global.EnemyRN]){ //execute enemy's user event
			event_user(global.UISelection);
		}
		global.BattleMenu = -2; //Act Dialogue 
		global.UISelection = -1; // disable select
		break;
		
		case 3: //Item
		global.BattleMenu = -2; //Item Dialogue 
		scr_useItem(); //script for using item, determine which item to be used in this script
		break;
		
		case 4: //Mercy
		global.BattleMenu = -2; //Spare and Flee dialogue
		scr_spareAndFlee();
		break;
	}
}

//quitting menu
if quit_key && global.UISelection > -1{
	if (global.BattleMenu = 1 || global.BattleMenu = 2 || global.BattleMenu = 3 || global.BattleMenu = 4){
		global.BattleMenu = 0;
		global.UISelection = BelowUIReference;
		ItemPage = 1;
		PlayerDialogue.TextLength = 0;
		PlayerDialogue.IsWriting = true;
		PlayerDialogue.CurrentDelay = 0;
	}else if (global.BattleMenu > 0){
		global.BattleMenu -= 0.5;
		global.UISelection = EnemySelectionReference;
	}
}
