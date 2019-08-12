/// @description Handles the hitboxes and code for all the little buttons
if(!oPauseMenu.isPaused && lockout == 0) {
	
	//x-ray button code
	if(mouse_x > 1800 && mouse_x < 1900) {
		if(mouse_y > 900 && mouse_y < 925) {
			xrayMode = !xrayMode;
			lockout = 10;
		}
	}
}