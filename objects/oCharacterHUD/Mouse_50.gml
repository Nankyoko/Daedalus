/// @description Interacts with buttons like Sharron interacted with all those men
if(visible && interactable && lockout == 0) {
	
	lockout = 10;
	
	if(mouse_x > 25 && mouse_x < 150) {
		if(mouse_y > 850 && mouse_y < 875) {
			interactClicked = !interactClicked;
			exit;
		}
	}
	
	if(interactClicked) {
		with ds_list_find_value(currentCharacter.nearbyObjects, 0){
			event_user(0);
		}
	}
}