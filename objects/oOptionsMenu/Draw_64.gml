/// @description Insert description here
// You can write your code in this editor
UIRectangle(sTestUIRectangle, 600, 270, 1320, 810);
draw_text(605, 275, "Options");

draw_text(605, 350, "Fullscreen");
if(!isFullscreen) {
	UIRectangle(sTestUIRectangle, 720, 345, 745, 370);
} else {
	UIRectangle(sTestUIRectangleRed, 720, 345, 745, 370);	
}