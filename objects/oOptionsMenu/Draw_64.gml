/// @description Insert description here
// You can write your code in this editor
UIRectangle(sTestUIRectangle, 600, 270, 1320, 810);
draw_text(605, 275, "Options");

//Full Screen
draw_text(605, 350, "Fullscreen");
if(!isFullscreen) {
	UIRectangle(sTestUIRectangle, 720, 345, 745, 370);
} else {
	UIRectangle(sTestUIRectangleRed, 720, 345, 745, 370);	
}

//Animation Speed
draw_text(605, 400, "Animation Speed");
if(animationSpeed == 0) {
	UIRectangle(sTestUIRectangleRed, 605, 425, 705, 450);
} else {
	UIRectangle(sTestUIRectangle, 605, 425, 705, 450);
}
draw_text(615, 435, "Normal");

if(animationSpeed == 2) {
	UIRectangle(sTestUIRectangleRed, 715, 425, 815, 450);
} else {
	UIRectangle(sTestUIRectangle, 715, 425, 815, 450);
}
draw_text(725, 435, "Fast");

if(animationSpeed == 3) {
	UIRectangle(sTestUIRectangleRed, 825, 425, 975, 450);
} else {
	UIRectangle(sTestUIRectangle, 825, 425, 975, 450);
}
draw_text(835, 435, "H*ckin' Fast");

//Close Button
UIRectangle(sTestUIRectangle, 1200, 740, 1300, 765);

draw_text(1210, 750, "Close");