/// @description Draws a small list of permanent buttons

//X-Ray mode
if(!xrayMode) {
	UIRectangle(sTestUIRectangle, 1800, 900, 1900, 925);
} else {
	UIRectangle(sTestUIRectangleRed, 1800, 900, 1900, 925);
	UIEllipse(sTestUICircleEmpty, mouse_x-75, mouse_y-75, mouse_x+75, mouse_y+75);
}
draw_text(1810, 910, "X-Ray Mode");

//End Turn
UIRectangle(sTestUIRectangle, 1800, 825, 1900, 875);
draw_text(1810, 845, "END TURN");