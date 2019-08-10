/// @description Insert description here
// You can write your code in this editor
if(visible && lockout == 0) {
	if(mouse_x > 600 && mouse_x < 1320 && mouse_y > 270 && mouse_y < 810) {
		if(mouse_x > 720 && mouse_x < 745) {
			
			//Fullscreen button
			if(mouse_y > 345 && mouse_y < 370) {
				isFullscreen = !isFullscreen;
				window_set_fullscreen(isFullscreen);
				lockout = 10;
			}
		}
		
		//Animation Speeds
		if(mouse_y > 425 && mouse_y < 450) {
			if(mouse_x > 605 && mouse_x < 705) {
				animationSpeed = 0;
			}
			if(mouse_x > 715 && mouse_x < 815) {
				animationSpeed = 2;
			}
			if(mouse_x > 825 && mouse_x < 925) {
				animationSpeed = 3;
			}
			lockout = 10;
		}
	} else {
		visible = false;
	}
	
	//Close
	if(mouse_x > 1200 && mouse_x < 1300 && mouse_y > 740 && mouse_y < 765) {
		visible = false;
		lockout = 10;
	}
}