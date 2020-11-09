function CharListInteractables(argument0) {
	//The character to search around
	var _char = argument0;

	//The list of objects around the character to be returned
	var _objectList = ds_list_create();
	
	//List of enemies around the character
	var _enemyList = ds_list_create();

	//The object being scanned
	var _scanObject;
	
	//Check for any objects next to the given character
	for(var i = 0; i < ds_list_size(global.objectList); i++) {
		_scanObject = ds_list_find_value(global.objectList, i);
		
		//Check North/South
		if(_scanObject.currentTileX == _char.currentTileX) {
			if(_scanObject.currentTileY-1 == _char.currentTileY || _scanObject.currentTileY+1 == _char.currentTileY) {
				ds_list_add(_objectList, _scanObject);
			}
		}
		
		//Check East/West
		if(_scanObject.currentTileY == _char.currentTileY) {
			if(_scanObject.currentTileX-1 == _char.currentTileX || _scanObject.currentTileX+1 == _char.currentTileX) {
				ds_list_add(_objectList, _scanObject);
			}
		}
	}
	
	//Check for any allies or enemies, and shuffle them into the appropriate lists
	for(var i = 0; i < ds_list_size(global.characterList); i++) {
		_scanObject = ds_list_find_value(global.characterList, i);
		
		//Check North/South
		if(_scanObject.currentTileX == _char.currentTileX) {
			if(_scanObject.currentTileY-1 == _char.currentTileY || _scanObject.currentTileY+1 == _char.currentTileY) {
				if(_scanObject.team == _char.team) {
					ds_list_add(_objectList, _scanObject);
				} else {
					ds_list_add(_enemyList, _scanObject);	
				}
			}
		}
		
		//Check East/West
		if(_scanObject.currentTileY == _char.currentTileY) {
			if(_scanObject.currentTileX-1 == _char.currentTileX || _scanObject.currentTileX+1 == _char.currentTileX) {
				if(_scanObject.team == _char.team) {
					ds_list_add(_objectList, _scanObject);
				} else {
					ds_list_add(_enemyList, _scanObject);	
				}
			}
		}
	}
	
	_char.nearbyObjects = _objectList;
	_char.nearbyEnemy = _enemyList;
	
	oCharacterHUD.interactable = ds_list_size(_objectList) > 0;
	oCharacterHUD.enemy = ds_list_size(_enemyList) > 0;
}