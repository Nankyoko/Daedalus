var _charList = argument0;
var _char;
var _y;
for(var i = 0; i < ds_list_size(_charList); i++) {
	_char = ds_list_find_value(_charList, i);
	
	_y = -1 * _char.currentTileY;
	
	_char.depth = _y*100;
}