/// @description Draws the actual dialog box

//Overall Rectangle
UIRectangle(sTestUIRectangle, 150, 600, 800, 700);

//The sprite to be drawn on the left side
draw_sprite(sStiffGwen,0,175,625);

//Font color and dynamic string
//Determined by the script list and advanced by the space key press event
draw_set_color(c_black);
draw_text(275, 625, currentString);