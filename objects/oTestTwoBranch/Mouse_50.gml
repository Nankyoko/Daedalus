/// @description Checks for left click mouse events and determines if one of the text options has been selected

//Checks if the mouse is horizontally within the space of the dialog choices
if(mouse_x > BRANCH1_X1 && mouse_x < BRANCH1_X2 && visible) {
	if(mouse_y > BRANCH1_Y1 && mouse_y < BRANCH1_Y2) {
		oTestDialogSoftly.visible = true;
		visible = false;
	}
	
	if(mouse_y > BRANCH2_Y1 && mouse_y < BRANCH2_Y2) {
		oTestDialogLoudly.visible = true;
		visible = false;
	}
}
