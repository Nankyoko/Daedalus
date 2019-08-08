/// @description Controls clicking on the UI elements

if(visible && !quitPressed && !restartPressed) {
	if(mouse_y > 400 && mouse_y < 426) {
		//Restart
		if(mouse_x > 350 && mouse_x < 425) {
			restartPressed = true;
		}
		//Retreat
		if(mouse_x > 470 && mouse_x < 554) {
			room_goto(testMenuRoom);	
		}
		//Quit
		if(mouse_x > 599 && mouse_x < 674){
			quitPressed = true;
		}
	}
}

//Buttons for confirmation on pressing quit
if(quitPressed && visible) {
	if(mouse_y > 400 && mouse_y < 425) {
		//Yes
		if(mouse_x > 475 && mouse_x < 520) {
			game_end();	
		}
		//No
		if(mouse_x > 530 && mouse_x < 575) {
			quitPressed = false;	
		}
	}
}
	
	
//Buttons for confirmation on pressing restart
if(restartPressed && visible) {
	if(mouse_y > 400 && mouse_y < 425) {
		//Yes
		if(mouse_x > 475 && mouse_x < 520) {
			room_restart();	
		}
		//No
		if(mouse_x > 530 && mouse_x < 575) {
			restartPressed = false;	
		}
	}
}
