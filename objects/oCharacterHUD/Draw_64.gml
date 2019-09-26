/// @description Draws a UI almost as ugly as my first ex wife, Sharron

//Draw the base ugly UI
UICharBackWheel();
UIEllipse(sTestUICircle, 25,925, 125, 1025);
UICharHealth(currentCharacter.maxHP, currentCharacter.currentHP);

//Draw the ugly sprite
draw_sprite(sStiffSprites, ChangeSprite(currentCharacter.name, "Happy"), 55, 965);

//If there is an object nearby, trigger its User Event
if(interactable) {
	UIRectangle(sTestUIRectangle, 25, 850, 150, 875);
	draw_text(35, 860, "Interact");
	
	if(interactClicked) {
		UIRectangle(sTestUIRectangle, 175, 850, 300, 875);
		draw_text(185, 860, ds_list_find_value(currentCharacter.nearbyObjects, 0).name);
	}
}