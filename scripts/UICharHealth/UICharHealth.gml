// Displays Sprite and Healthbar for character UI in bottom left

var _maxHP = argument0;
var _currentHP = argument1;

var _percentHealth = _currentHP / _maxHP;

//250 is the overall length of the full hitbar (x2 - x1 of the first UI Rectangle)
//50 should be the same as the x1 value of the other 2 UI rectangles
var _x2 = 75 + (_percentHealth * 250);
UIRectangle(sTestUIRectangle, 75, 1020, 325, 1045);
UIRectangle(sTestUIRectangleRed, 75, 1020, _x2, 1045);

draw_text(80, 1025, string(_currentHP) + "/" + string(_maxHP));
//Haley is a thot