function UIEllipse(argument0, argument1, argument2, argument3, argument4) {
	var _sprite = argument0;
	var _x1 = argument1;
	var _y1 = argument2;
	var _x2 = argument3;
	var _y2 = argument4;

	//Total width and height of the circle
	var _w = _x2 - _x1;
	var _h = _y2 - _y1;

	draw_sprite_stretched(_sprite, 0, _x1, _y1, _w, _h);


}
