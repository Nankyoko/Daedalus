// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StoreUI(_name, _x, _y){
	var _uiElement = ds_list_create();
	
	//_uiElement is a 3 item list, it includes the x and y coordinates the cursor sprite needs to be at,
	//and an identifier for each UI element
	
	//Mouse clicks are fired at the same x and y coordinates as the sprite render
	ds_list_add(_uiElement, _name);
	ds_list_add(_uiElement, _x);
	ds_list_add(_uiElement, _y);
	
	ds_list_add(global.activeUI, _uiElement);
}