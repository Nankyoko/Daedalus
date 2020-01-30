/// @description Draw the paws menu

UIRectangle(sUIButton, 477, 350, 547, 376);
draw_text(490, 355, "Pause");

UIRectangle(sUIButton, 350, 400, 425, 426);
draw_text(357, 405, "Restart");

UIRectangle(sUIButton, 470, 400, 554, 426);
draw_text(481, 405, "Retreat");

UIRectangle(sUIButton, 599, 400, 674, 426);
draw_text(620, 405, "Quit");

UIRectangle(sUIButton, 700, 400, 800, 426);
draw_text(710, 405, "Options");

//Draw the confirmation meowssage for quitting
if(quitPressed) {
	
	//Box
	UIRectangle(sUIButton, 450, 325, 600, 450);
	draw_text(467, 350, "Quit the game?");
	
	//The buttons
	UIRectangle(sUIButton, 475, 400, 520, 425);
	draw_text(485, 405, "Yes");
	UIRectangle(sUIButton, 530, 400, 575, 425);
	draw_text(545, 405, "No");
}

//Draw the confirmation meowssage for restarting
if(restartPressed) {
	//Box
	UIRectangle(sUIButton, 450, 325, 600, 450);
	draw_text(467, 350, "Restart fight?");
	
	//The buttons
	UIRectangle(sUIButton, 475, 400, 520, 425);
	draw_text(485, 405, "Yes");
	UIRectangle(sUIButton, 530, 400, 575, 425);
	draw_text(545, 405, "No");
}