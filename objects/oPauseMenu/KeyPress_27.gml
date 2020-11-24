/// @description Set paws menu to visible!
visible = !visible;

oButtons.visible = !visible;

//Isn't giving the illusion of pausing better than actually pausing?~
oCharacterHUD.currentCharacter.isSelected = false;
oCharacterHUD.visible=false;

//Toggles the pause menu, and a few things to give the illusion of pausing
isPaused = !isPaused;

//Technically this gets set both opening and closing the pause menu but ehhh
restartPressed = false;
quitPressed = false;