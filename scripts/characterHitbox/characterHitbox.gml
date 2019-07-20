var _currentCharacter = argument0;

var roomX, roomY;

roomX = TileToScreenX(_currentCharacter.currentTileX, _currentCharacter.currentTileY, oRender.cameraX, oRender.cameraZoom/2) + oRender.cameraZoom * 20;
roomY = TileToScreenY(_currentCharacter.currentTileX, _currentCharacter.currentTileY, oRender.cameraY, oRender.cameraZoom/2) - oRender.cameraZoom * 25;

if(mouse_x > roomX && mouse_x < roomX + 40 * oRender.cameraZoom) {
	if(mouse_y > roomY && mouse_y < roomY + 75 * oRender.cameraZoom) {
		return true;	
	}	
}