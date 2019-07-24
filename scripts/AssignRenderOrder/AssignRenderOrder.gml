var _charList = argument0;
var _char;

for(var i = 0; i < ds_list_size(_charList); i++) {
	_char = ds_list_find_value(_charList, i);
	
	_char.depth = i*100;
}