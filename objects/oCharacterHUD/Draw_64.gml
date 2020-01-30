/// @description Draws a UI almost as ugly as my first ex wife, Sharron

//Draw the base ugly UI
UICharBackWheel();
UIEllipse(sTestUICircle, 25,925, 125, 1025);
UICharHealth(currentCharacter.maxHP, currentCharacter.currentHP);

//Draw the ugly sprite
draw_sprite(sStiffSprites, ChangeSprite(currentCharacter.name, "Happy"), 55, 965);

//If there is an object nearby, trigger its User Event
if(interactable) {
	UIRectangle(sUIButton, 25, 850, 150, 875);
	draw_text(35, 860, "Interact");
	
	if(interactClicked) {
		
		//First box, always appears
		UIRectangle(sUIButton, 175, 850, 300, 875);
		draw_text(185, 860, ds_list_find_value(currentCharacter.nearbyObjects, 0).name);
		
		if(numInteractables >= 2) {
			UIRectangle(sUIButton, 175, 815, 300, 840);
			draw_text(185, 825, ds_list_find_value(currentCharacter.nearbyObjects, 1).name);
			if(numInteractables >= 3) {
				UIRectangle(sUIButton, 175, 780, 300, 805);
				draw_text(185, 790, ds_list_find_value(currentCharacter.nearbyObjects, 2).name);
				if(numInteractables == 4) {
					UIRectangle(sUIButton, 175, 745, 300, 770);
					draw_text(185, 755, ds_list_find_value(currentCharacter.nearbyObjects, 3).name);
				}
			}
		}
	}
}