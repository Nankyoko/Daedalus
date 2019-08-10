/// @description Draw the paws menu

UIRectangle(sTestUIRectangle, 477, 350, 547, 376);
draw_text(490, 355, "Pause");

UIRectangle(sTestUIRectangle, 350, 400, 425, 426);
draw_text(357, 405, "Restart");

UIRectangle(sTestUIRectangle, 470, 400, 554, 426);
draw_text(481, 405, "Retreat");

UIRectangle(sTestUIRectangleRed, 599, 400, 674, 426);
draw_text(620, 405, "Quit");

UIRectangle(sTestUIRectangle, 700, 400, 800, 426);
draw_text(660, 405, "Options");

//Draw the confirmation meowssage for quitting
if(quitPressed) {
	UIRectangle(sTestUIRectangle, 450, 325, 600, 450);
	draw_text(467, 350, "Quit the game?");
	UIRectangle(sTestUIRectangle, 475, 400, 520, 425);
	draw_text(485, 405, "Yes");
	UIRectangle(sTestUIRectangle, 530, 400, 575, 425);
	draw_text(545, 405, "No");
}

//Draw the confirmation meowssage for restarting
if(restartPressed) {
	UIRectangle(sTestUIRectangle, 450, 325, 600, 450);
	draw_text(467, 350, "Restart fight?");
	UIRectangle(sTestUIRectangle, 475, 400, 520, 425);
	draw_text(485, 405, "Yes");
	UIRectangle(sTestUIRectangle, 530, 400, 575, 425);
	draw_text(545, 405, "No");
}