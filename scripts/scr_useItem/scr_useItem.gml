function scr_useItem(_item, _index){
	var item = _item;
	var index = _index;
	
	if (item.Keep == false){
		array_delete(global.Item, index, 1);
	}
	
	item.Function(item);

	

}
