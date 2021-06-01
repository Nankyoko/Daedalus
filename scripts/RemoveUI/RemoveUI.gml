// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RemoveUI(_name){
	var _index = FindUIIndex(_name);
	
	if(_index != -1) {
		ds_list_delete(global.activeUI, _index);
	} else {
		show_debug_message("UI Element could not be removed, it was not found")	
	}
}