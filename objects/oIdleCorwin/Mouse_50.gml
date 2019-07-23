//As long as Cowin still has moves, he can be selected
if(characterHitbox(oIdleCorwin) && !oPauseMenu.isPaused) {
	isSelected = true;
	UISwapHUDCharacter(oIdleCorwin);
} else {
	isSelected = false;
}