//The character to search around
var _char = argument0;

//The list of objects around the character to be returned
var _list = ds_list_create();

//The object being scanned
var _scanObject;

//Boolean to skip loops for efficiency
var _objectFound = false;

//Search up
if(global.characterLocations[# _char.currentTileX, _char.currentTileY-1]) {
	
	//Loop over all the objects in the room (Not characters or floor items)
	for(var i = 0; i < ds_list_size(global.objectList); i++;) {
		
		_scanObject = ds_list_find_value(global.objectList, i);
		
		if(_scanObject.currentTileX = _char.currentTileX) {
			if(_scanObject.currentTileY = _char.currentTileY-1) {
				//Add it to the list and exit the loop
				ds_list_add(_list, _scanObject);
				_objectFound = true;
				break;
			}
		}
	}
	
	if(!_objectFound) {
		for(var i = 0; i < ds_list_size(global.characterList); i++;) {
		
			_scanObject = ds_list_find_value(global.characterList, i);
		
			if(_scanObject.currentTileX = _char.currentTileX) {
				if(_scanObject.currentTileY = _char.currentTileY-1) {
					//Add it to the list and exit the loop
					ds_list_add(_list, _scanObject);
					break;
				}
			}
		}
	}
}

_objectFound = false;

//Search down
if(global.characterLocations[# _char.currentTileX, _char.currentTileY+1]) {
	//Loop over all the objects in the room (Not characters or floor items)
	for(var i = 0; i < ds_list_size(global.objectList); i++;) {
		
		_scanObject = ds_list_find_value(global.objectList, i);
		
		if(_scanObject.currentTileX = _char.currentTileX) {
			if(_scanObject.currentTileY = _char.currentTileY+1) {
				//Add it to the list and exit the loop
				ds_list_add(_list, _scanObject);
				_objectFound = true;
				break;
			}
		}
	}
	
	if(!_objectFound) {
		for(var i = 0; i < ds_list_size(global.characterList); i++;) {
		
			_scanObject = ds_list_find_value(global.characterList, i);
		
			if(_scanObject.currentTileX = _char.currentTileX) {
				if(_scanObject.currentTileY = _char.currentTileY+1) {
					//Add it to the list and exit the loop
					ds_list_add(_list, _scanObject);
					break;
				}
			}
		}
	}
}

_objectFound = false;

//Search left
if(global.characterLocations[# _char.currentTileX-1, _char.currentTileY]) {
	//Loop over all the objects in the room (Not characters or floor items)
	for(var i = 0; i < ds_list_size(global.objectList); i++;) {
		
		_scanObject = ds_list_find_value(global.objectList, i);
		
		if(_scanObject.currentTileX = _char.currentTileX-1) {
			if(_scanObject.currentTileY = _char.currentTileY) {
				//Add it to the list and exit the loop
				ds_list_add(_list, _scanObject);
				_objectFound = true;
				break;
			}
		}
	}
	
	if(!_objectFound) {
		for(var i = 0; i < ds_list_size(global.characterList); i++;) {
		
			_scanObject = ds_list_find_value(global.characterList, i);
			
			if(_scanObject.currentTileX = _char.currentTileX-1) {
				if(_scanObject.currentTileY = _char.currentTileY) {
					//Add it to the list and exit the loop
					ds_list_add(_list, _scanObject);
					break;
				}
			}
		}
	}
}

_objectFound = false;

//Search right
if(global.characterLocations[# _char.currentTileX+1, _char.currentTileY]) {
	//Loop over all the objects in the room (Not characters or floor items)
	for(var i = 0; i < ds_list_size(global.objectList); i++;) {
		
		_scanObject = ds_list_find_value(global.objectList, i);
		
		if(_scanObject.currentTileX = _char.currentTileX+1) {
			if(_scanObject.currentTileY = _char.currentTileY) {
				//Add it to the list and exit the loop
				ds_list_add(_list, _scanObject);
				_objectFound = true;
				break;
			}
		}
	}
	
	if(!_objectFound) {
	for(var i = 0; i < ds_list_size(global.characterList); i++;) {	
			_scanObject = ds_list_find_value(global.characterList, i);
			
			if(_scanObject.currentTileX = _char.currentTileX+1) {
				if(_scanObject.currentTileY = _char.currentTileY) {
					//Add it to the list and exit the loop
					ds_list_add(_list, _scanObject);
					break;
				}
			}
		}
	}
}

return _list;