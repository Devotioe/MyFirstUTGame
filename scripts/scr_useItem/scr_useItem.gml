function scr_useItem(){
	var ItemSelection; //selection based on page
	
	if (room == room_battle){
		if (global.Menu.ItemPage == 1){
			ItemSelection = global.UISelection;
		}else{
			ItemSelection = global.UISelection + 4;
		}
	}
	global.UISelection = -1; // disable selection
	
	var _item = GetItemData(global.Item[ItemSelection])
	_item.Function(_item);
	if _item.Keep = true{
		exit;
	}
	
	
	//global.Item[ItemSelection] = "";
	
	
	//for (var i = 0 ; i < array_length(global.Item) - 1 ; i ++){
	//	if (global.Item[i] == ""){
	//		global.Item[i] = global.Item[i+ 1];
	//		global.Item[i+ 1] = "";
	//	}
	//}
	//array_resize(global.Item, array_length(global.Item)-1);
	
	array_delete(global.Item, ItemSelection, 1);

	
}
