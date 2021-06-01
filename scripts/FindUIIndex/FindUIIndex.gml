// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FindUIIndex(_name){
	var _temp;
	for(var _i=0; _i<ds_list_size(global.activeUI); _i++) {
		_temp = ds_list_find_value(global.activeUI, _i);
		
		if(_name == ds_list_find_value(_temp, 0)) {
			return _i;	
		}
	}
	
	return -1;
}