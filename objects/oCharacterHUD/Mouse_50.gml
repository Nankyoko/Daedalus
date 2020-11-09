/// @description Interacts with buttons like Sharron interacted with all those men
if(visible && interactable && lockout == 0) {
	
	lockout = 10;
	
	//If interact is clicked, toggle it, but always deselect attack list
	if(mouse_x > 25 && mouse_x < 150) {
		if(mouse_y > 850 && mouse_y < 875) {
			interactClicked = !interactClicked;
			attackClicked = false;
			exit;
		}
	}
	
	//If attack is clicked, toggle it and always deselect the interact list
	if(mouse_x > 25 && mouse_x < 150) {
		if(mouse_y > 815 && mouse_y < 840) {
			attackClicked = !attackClicked;
			interactClicked = false;
			exit;
		}
	}
	
	if(interactClicked && !currentCharacter.turnUsed) {
		if(mouse_x > 175 && mouse_x < 300) {
			if(mouse_y > 850 && mouse_y < 875) {
				with ds_list_find_value(currentCharacter.nearbyObjects, 0){
					event_user(0);
				}
			} else if(mouse_y > 815 && mouse_y < 840 && numInteractables >= 2) {
				with ds_list_find_value(currentCharacter.nearbyObjects, 1){
					event_user(0);
				}
			} else if(mouse_y > 780 && mouse_y < 805 && numInteractables >= 3) {
				with ds_list_find_value(currentCharacter.nearbyObjects, 2){
					event_user(0);
				}
			} else if(mouse_y > 745 && mouse_y < 770 && numInteractables >= 4) {
				with ds_list_find_value(currentCharacter.nearbyObjects, 3){
					event_user(0);
				}
				
			currentCharacter.turnUsed = true;
			}
		}
	}
}