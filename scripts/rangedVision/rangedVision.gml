// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rangedVision(_char, _range){
	//Oh my god this was so much work.  It works really well tho
	//This feels like a ton of variables?
	var _hittable = ds_list_create();
	var _heightChange = 0;
	var _currentX = _char.currentTileX;
	var _currentY = _char.currentTileY;
	var _targetChar;
	var _rangeDiffX;
	var _rangeDiffY;
	var _targetX;
	var _targetY;
	var _startTile = global.theMap[# _currentX, _currentY];
	var _currentTile;
	var _targetTile;
	var _drop = 0;
	var _loopCounter;
	//Gather all the characters within range
	for(var i = 0; i<ds_list_size(global.characterList); i++) {
		
		_targetChar = ds_list_find_value(global.characterList, i);
		//Only search enemies
		if(_char.team != _targetChar.team) {
			
			//Calculate the total tile difference between the two characters
			_rangeDiffX = abs(_targetChar.currentTileX - _currentX);
			_rangeDiffY = abs(_targetChar.currentTileY - _currentY);
			
			//Prevents expanding past range
			if(_rangeDiffX == 0) {
				_rangeDiffX++;
			}
			if(_rangeDiffY == 0) {
				_rangeDiffY++;
			}
			
			//Range + 1 because of how circles work
			if(_rangeDiffX + _rangeDiffY <= _range + 1) {
				ds_list_add(_hittable, _targetChar);
			}
		}
	}
	
	//Remove all unhittable enemies
	for(i=0; i<ds_list_size(_hittable); i++) {
		//Reset variables for next pass
		_currentX = _char.currentTileX;
		_currentY = _char.currentTileY;
		_loopCounter = 0;
		
		//Select char
		_targetChar = ds_list_find_value(_hittable, i);
		_targetX = _targetChar.currentTileX;
		_targetY = _targetChar.currentTileY;
		_targetTile = global.theMap[# _targetX, _targetY];
		
		//Set range difference
		_rangeDiffX = abs(_targetX - _currentX);
		_rangeDiffY = abs(_targetY - _currentY);
		
		//Move along path to enemy until you hit the enemy or an impassable object
		while(_rangeDiffX != 0 || _rangeDiffY != 0) {
			_loopCounter++;
			//Remove whichever difference is greater, moving one tile closer to the enemy
			if(_rangeDiffX >= _rangeDiffY) {
				if(_currentX > _targetX) {
					_currentX--;
				} else if (_currentX < _targetX) {
					_currentX++;
				}
				_rangeDiffX--;
			} else {
				if(_currentY > _targetY) {
					_currentY--;
				} else if (_currentY < _targetY) {
					_currentY++;
				}
				_rangeDiffY--;
			}
			_currentTile = global.theMap[# _currentX, _currentY];
			
			//If there is a character or object blocking the tile, you cannot shoot through it
			if(global.characterLocations[# _currentX, _currentY]) {
				if(_currentX != _targetX || _currentY != _targetY) {
					ds_list_delete(_hittable, i);
					break;
				}
			}
			
			//Determine the height changes on tiles
			_heightChange = (_startTile[TILE.Z]/26.5) - (_currentTile[TILE.Z]/26.5);
			
			//These 2 if's are my most worrisome, but they *should* work
			//If first drop
			if(_heightChange >= 1 && _drop == 0) {
				_drop = _loopCounter;
			}
			
			//If shooting up
			if(_heightChange <= -1) {
				_drop++;
			}
			
			
			//If the current tile is higher than both the start and target tiles, you can't shoot over it
			if(_targetTile[TILE.Z] < _currentTile[TILE.Z] && _startTile[TILE.Z] < _currentTile[TILE.Z]) {
				ds_list_delete(_hittable, i);
				break;
			}
			
			if(_currentX == _targetX && _currentY == _targetY) {
				switch(abs(floor(_heightChange))) {
					case 0: break;
					case 1: _oneDrop(_drop, _loopCounter, _hittable, i); break;
					case 2: _twoDrop(_drop, _loopCounter, _hittable, i); break;
					
					//Anything over three drops, if you aren't right on the edge, you cannot hit
					default: if(_loopCounter > 1) {
						ds_list_delete(_hittable, i);
					}
				}
			}
		}
	}
	return _hittable;
}

//I figured switching is faster than doing math, especially with so few cases
function _oneDrop(_dis, _distance, _list, _id) {
	switch(_dis) {
		case 1: break;
		case 2: if(_distance == 2) {
			ds_list_delete(_list, _id);
		} break;
		case 3: if(_distance >= 3 && _distance <= 5) {
			ds_list_delete(_list, _id);
		} break;
		case 4: if(_distance >= 4 && _distance <= 7) {
			ds_list_delete(_list, _id);
		} break;
		default: ds_list_delete(_list, _id); break;
	}
}

function _twoDrop(_dis, _distance, _list, _id) {
	switch(_dis) {
		case 1: if(_distance == 1) {
			ds_list_delete(_list, _id);
		}break;
		case 2: if(_distance >= 2 && _distance <= 5) {
			ds_list_delete(_list, _id);
		} break;
		default: ds_list_delete(_list, _id); break;
	}
}