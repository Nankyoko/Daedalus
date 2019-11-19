/// @description Insert description here
// You can write your code in this editor

if(guiVisible && timeout == 0) {
	if(mouse_x > 310 && mouse_x < 435 && mouse_y > 745 && mouse_y < 875) {
		timeout = 10;
		//Up
		if(mouse_y < 875 && mouse_y > 850) {
			TipBrazier(id, 1);
		}
		
		//Down
		if(mouse_y > 815 && mouse_y < 840) {
			TipBrazier(id, 2);
		}
		
		//Left
		if(mouse_y > 780 && mouse_y < 805) {
			TipBrazier(id, 3);
		}
		
		//Right
		if(mouse_y > 745 && mouse_y < 770) {
			TipBrazier(id, 4);
		}
	} else {
		guiVisible = false;
	}
}
