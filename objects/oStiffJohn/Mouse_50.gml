//As long as this unit still has moves, it can be selected
if(characterHitbox(oStiffJohn)) {
	isSelected = true;
	UISwapHUDCharacter(oStiffJohn);
} else {
	isSelected = false;
}