var choiceOne = argument0;
var choiceTwo = argument1;
var choiceThree = argument2;

//Draws the standard two choices, and then splits the difference for the third one

TwoChoiceBranch(choiceOne, choiceTwo);
UIRectangle(sTestUIRectangle, BRANCH3_X1, BRANCH3_Y1, BRANCH3_X2, BRANCH3_Y2);
draw_text(BRANCH1_X1 + 25, BRANCH3_Y1 + 5, choiceThree);