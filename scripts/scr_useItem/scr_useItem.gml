function scr_useItem(_item, _index){
	
	var item = _item;
	var index = _index;
	
	item.Function(item);
	if item.Keep = true{
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
	
	array_delete(global.Item, index, 1);

	
}
