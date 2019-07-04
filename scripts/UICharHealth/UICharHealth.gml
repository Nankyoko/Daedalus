// Displays Sprite and Healthbar for character UI in bottom left

var _maxHP = argument0;
var _currentHP = argument1;

var _percentHealth = _currentHP / _maxHP;

//250 is the overall length of the full hitbar (x2 - x1 of the first UI Rectangle)
//50 should be the same as the x1 value of the other 2 UI rectangles
var _x2 = 75 + (_percentHealth * 250);
UIRectangle(sTestUIRectangle, 75, 720, 325, 745);
UIRectangle(sTestUIRectangleRed, 75, 720, _x2, 745);

draw_text(80, 725, string(_currentHP) + "/" + string(_maxHP));
//Haley is a thot