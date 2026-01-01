function scr_useItem(){
	
	var StartingHp = global.PlayerHp;
	var healed = false;
	var ItemKeep = false
	global.Enemy[0].ActionText = instance_create_depth(obj_Menu.box_basicshift, 270, -1, obj_TextElement);
	global.Enemy[0].ActionText.CanAdvance = true;
	
	var ItemSelection; //selection based on page
	
	if (obj_Menu.ItemPage == 1){
		ItemSelection = global.UISelection;
	}else{
		ItemSelection = global.UISelection + 4;
	}
	
	if global.Item[ItemSelection] == "SnowPiece"{
		global.Enemy[0].ActionText.TextToDraw = "* You ate the Snowman Piece!&"
		global.PlayerHp += 40;
	}
	if global.Item[ItemSelection] == "B.Pie"{
		global.Enemy[0].ActionText.TextToDraw = "* You ate the Butterscotch Pie!&"
		global.PlayerHp += 99;
	}
	if global.Item[ItemSelection] == "L.Hero"{
		global.Enemy[0].ActionText.TextToDraw = "* You ate the Legendary Hero!&* Your attack increased by 4!&"
		global.PlayerHp += 40;
	}
	
	if (global.PlayerHp - StartingHp) > 0 { //healed
		audio_play_sound(snd_heal_c, 20, false);
		healed = true;
	}
	
	if (global.PlayerHp > global.PlayerMaxHp) { // maxed out
		global.Enemy[0].ActionText.TextToDraw += "* Your HP was maxed out!";
		global.PlayerHp = global.PlayerMaxHp; // clamp the hp 
	}else{
		global.Enemy[0].ActionText.TextToDraw += "* You recovered " + string(global.PlayerHp - StartingHp)+ " HP!";
	}
	global.UISelection = -1; // disable selection

	
		
	if ItemKeep {
		exit;
	}
	global.Item[ItemSelection] = "";
	for (var i = 0 ; i < array_length(global.Item) - 1 ; i ++){
		if (global.Item[i] == ""){
			global.Item[i] = global.Item[i+ 1];
			global.Item[i+ 1] = "";
		}
	}
	array_resize(global.Item, array_length(global.Item)-1);

	
}
