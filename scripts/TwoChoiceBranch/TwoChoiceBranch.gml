///@desc Displays 2 choices on the screen
function TwoChoiceBranch(argument0, argument1) {

	//Must be called in the Draw GUI method

	var choiceOne = argument0;
	var choiceTwo = argument1;

	UIRectangle(sTestUIRectangle, BRANCH1_X1, BRANCH1_Y1, BRANCH1_X2, BRANCH1_Y2);
	draw_text(BRANCH1_X1 + 25, BRANCH1_Y1 + 5, choiceOne);

	UIRectangle(sTestUIRectangle, BRANCH2_X1, BRANCH2_Y1, BRANCH2_X2, BRANCH2_Y2);
	draw_text(BRANCH1_X1 + 25, BRANCH2_Y1 + 5, choiceTwo);


}
