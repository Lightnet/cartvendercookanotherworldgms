_itemlist = argument[0]
//_id = argument[1] // id
_name = argument[1] // name
_stock = argument[2] // amount

//if (_itemlist == noone){
	//_itemlist = array_create();
//}


if( array_height_2d(_itemlist) > 0){
	_len = array_height_2d(_itemlist);
	_itemlist[_len,0] = _name;
	_itemlist[_len,1] = _stock;
}else{
	_itemlist[0,0] = _name;
	_itemlist[0,1] = _stock;
}

return _itemlist;