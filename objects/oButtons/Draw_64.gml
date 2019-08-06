/// @description Draws a small list of permanent buttons

//X-Ray mode
if(!xrayMode) {
	UIRectangle(sTestUIRectangle, 900, 700, 1000, 725);
} else {
	UIRectangle(sTestUIRectangleRed, 900, 700, 1000, 725);
	UIEllipse(sTestUICircleEmpty, mouse_x-75, mouse_y-75, mouse_x+75, mouse_y+75);
}
draw_text(907, 705, "X-Ray Mode");