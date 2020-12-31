/// @description Draws a UI almost as ugly as my first ex wife, Sharron

//Draw the base ugly UI
UICharBackWheel();
UIEllipse(sTestUICircle, 25,925, 125, 1025);
UICharHealth(currentCharacter.maxHP, currentCharacter.currentHP);

//Draw the ugly sprite
draw_sprite(sStiffSprites, ChangeSprite(currentCharacter.name, "Happy"), 55, 965);

//Draws the UI for interactable objects and nearby team members.
if(numInteractables > 0) {
	UIRectangle(sTestUIRectangle, 25, 850, 150, 875);
	draw_text(35, 860, "Interact");
	
	if(interactClicked) {
		
		//First box, always appears
		UIRectangle(sTestUIRectangle, 175, 850, 300, 875);
		draw_text(185, 860, ds_list_find_value(currentCharacter.nearbyObjects, 0).name);
		
		if(numInteractables >= 2) {
			UIRectangle(sTestUIRectangle, 175, 815, 300, 840);
			draw_text(185, 825, ds_list_find_value(currentCharacter.nearbyObjects, 1).name);
			if(numInteractables >= 3) {
				UIRectangle(sTestUIRectangle, 175, 780, 300, 805);
				draw_text(185, 790, ds_list_find_value(currentCharacter.nearbyObjects, 2).name);
				if(numInteractables == 4) {
					UIRectangle(sTestUIRectangle, 175, 745, 300, 770);
					draw_text(185, 755, ds_list_find_value(currentCharacter.nearbyObjects, 3).name);
				}
			}
		}
	}
}


//Draws the UI for adjacent enemies that can be attacked (melee)
if(numEnemies > 0) {
	UIRectangle(sTestUIRectangleRed, 25, 815, 150, 840);
	draw_text(35, 825, "Attack");
	
	if(attackClicked) {
		
		//First box, always appears
		UIRectangle(sTestUIRectangleRed, 175, 850, 300, 875);
		draw_text(185, 860, ds_list_find_value(currentCharacter.nearbyEnemy, 0).name);
		
		if(numEnemies >= 2) {
			UIRectangle(sTestUIRectangleRed, 175, 815, 300, 840);
			draw_text(185, 825, ds_list_find_value(currentCharacter.nearbyEnemy, 1).name);
			if(numEnemies >= 3) {
				UIRectangle(sTestUIRectangleRed, 175, 780, 300, 805);
				draw_text(185, 790, ds_list_find_value(currentCharacter.nearbyEnemy, 2).name);
				if(numEnemies == 4) {
					UIRectangle(sTestUIRectangleRed, 175, 745, 300, 770);
					draw_text(185, 755, ds_list_find_value(currentCharacter.nearbyEnemy, 3).name);
				}
			}
		}
	}
}

if(numRanged > 0) {
	UIRectangle(sTestUIRectangleRed, 25, 780, 150, 805);
	draw_text(35, 790, "Ranged");
	
	if(rangedClicked) {
		for(var _i = 0; _i < numRanged; _i++) {
			UIRectangle(sTestUIRectangleRed, 175, 850 - (35*_i), 300, 875 - (35* _i));
			draw_text(185, 860 - (35 * _i), ds_list_find_value(currentCharacter.rangedEnemies, _i).name);
		}
	}
}