function scr_useItem(_item, _index){
	
	var item = _item;
	var index = _index;
	
	item.Function(item);
	
	if item.Keep = true{
		exit;
	}
	
	array_delete(global.Item, index, 1);

}
