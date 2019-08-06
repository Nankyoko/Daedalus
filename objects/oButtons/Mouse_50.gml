/// @description Handles the hitboxes and code for all the little buttons
if(!oPauseMenu.isPaused && lockout == 0) {
	
	//x-ray button code
	if(mouse_x > 900 && mouse_y < 1000) {
		if(mouse_y > 700 && mouse_y < 725) {
			xrayMode = !xrayMode;
			lockout = 10;
		}
	}
}