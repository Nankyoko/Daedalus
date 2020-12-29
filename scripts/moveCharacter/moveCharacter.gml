// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveCharacter(_char, _direction, _isShove){
	var _currentTileX = _char.currentTileX;
	var _currentTileY = _char.currentTileY;
	var _nextTile;
	var _nextTileEmpty;
	
	//L, R, Up, Down
	switch(_direction) {
		case 0: _nextTile = global.theMap[# _currentTileX - 1, _currentTileY]; 
				_nextTileEmpty = global.characterLocations[# _currentTileX - 1, _currentTileY]; break;
		case 1: _nextTile = global.theMap[# _currentTileX + 1, _currentTileY];
				_nextTileEmpty = global.characterLocations[# _currentTileX + 1, _currentTileY]; break;
		case 2: _nextTile = global.theMap[# _currentTileX, _currentTileY - 1];
				_nextTileEmpty = global.characterLocations[# _currentTileX, _currentTileY - 1]; break;
		case 3: _nextTile = global.theMap[# _currentTileX, _currentTileY + 1]; 
				_nextTileEmpty = global.characterLocations[# _currentTileX, _currentTileY + 1]; break;
	}
	
	if(_char.movesLeft > 0 || _isShove) {
		//Only move if there's a tile to move on to
		if(_nextTile[TILE.SPRITE] != 0 && !_nextTileEmpty) {
			global.characterLocations[# _currentTileX, _currentTileY] = false;
			switch(_direction) {
				case 0: _char.currentTileX -= 1; break;
				case 1: _char.currentTileX += 1; break;
				case 2: _char.currentTileY -= 1; break;
				case 3: _char.currentTileY += 1; break;
			}
			if(!_isShove) {
				_char.movesLeft--;
				CharListInteractables(_char);
			}
			checkDamageTiles(_char);
		}
	}
}