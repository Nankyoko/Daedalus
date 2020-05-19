/// @description Handles the hitboxes and code for all the little buttons
if(!oPauseMenu.isPaused && lockout == 0) {
	
	if(mouse_x > 1800 && mouse_x < 1900) {
		//x-ray button code
		if(mouse_y > 900 && mouse_y < 925) {
			xrayMode = !xrayMode;
			lockout = 10;
		}
		
		//End Turn Code
		if(mouse_y > 825 && mouse_y < 875) {
			lockout = 100;
			for(var i = 0; i < ds_list_size(global.charTurnList); i++) {
				show_debug_message(ds_list_find_value(global.charTurnList, i).name);
				show_debug_message(ds_list_find_value(global.charTurnList, i).turnOrder);
			}
		}
	}
}