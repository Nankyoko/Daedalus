//As long as Gwen still has moves, she can be selected
if(characterHitbox(oStiffGwen) && !oPauseMenu.isPaused) {
	isSelected = true;
	UISwapHUDCharacter(oStiffGwen);
} else {
	isSelected = false;
}