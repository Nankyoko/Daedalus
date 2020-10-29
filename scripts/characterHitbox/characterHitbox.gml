function characterHitbox(argument0) {
	var _currentCharacter = argument0;
	var _tile;
	var roomX, roomY, roomZ;

	_tile = global.theMap[# _currentCharacter.currentTileX, _currentCharacter.currentTileY];
	roomX = TileToScreenX(_currentCharacter.currentTileX, _currentCharacter.currentTileY, oRender.cameraX, oRender.cameraZoom/2) + oRender.cameraZoom * 20;
	roomY = TileToScreenY(_currentCharacter.currentTileX, _currentCharacter.currentTileY, oRender.cameraY, oRender.cameraZoom/2) - oRender.cameraZoom * 25;
	roomZ = _tile[TILE.Z];

	if(mouse_x > roomX && mouse_x < roomX + 40 * oRender.cameraZoom) {
		if(mouse_y > roomY - roomZ && mouse_y < (roomY + 75 * oRender.cameraZoom) - roomZ) {
			return true;
		}
	}


}
