var _maxHP = argument0;
var _currentHP = argument1;

var _percentHealth = _currentHP / _maxHP;
var _x2 = 50 + (_percentHealth * 250);
UIRectangle(sTestUIRectangle, 50, 705, 300, 735);
UIRectangle(sTestUIRectangleRed, 50, 705, _x2, 735);

draw_text(55, 710, string(_currentHP) + "/" + string(_maxHP));
//Haley is a thot