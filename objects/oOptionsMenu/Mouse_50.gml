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
	} else {
		visible = false;
	}
}