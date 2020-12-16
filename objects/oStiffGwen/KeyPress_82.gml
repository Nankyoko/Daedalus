/// @description Insert description here
// You can write your code in this editor
var _vision = rangedVision(oStiffGwen, 8);
if(!ds_list_empty(_vision)) {
	for(var i = 0; i<ds_list_size(_vision); i++) {
		show_debug_message(_vision[| i].name);
	}
} else {
	show_debug_message("None found");
}

//team was 1 before