var roomX, roomY;
var tile;
var tileZ;
var _cameraX, _cameraY, _cameraZoom;
_cameraX = oRender.cameraX;
_cameraY = oRender.cameraY;
_cameraZoom = oRender.cameraZoom;

//The tile Gwen is currently standing on
tile = global.theMap[# currentTileX, currentTileY];

//Translates tile numbers to pixel locations for rendering
//I super don't recommend changing any of these values, since it centers the character on the tile
roomX = TileToScreenX(currentTileX, currentTileY, _cameraX, _cameraZoom/2) + _cameraZoom * 20;
roomY = TileToScreenY(currentTileX, currentTileY, _cameraY, _cameraZoom/2) - _cameraZoom * 25;

tileZ = tile[TILE.Z];
if(frameNumber = 13) {
	frameNumber = 0;	
}
draw_sprite_stretched(sIdleCorwin, frameNumber, roomX, roomY-(tileZ*_cameraZoom), 40 * _cameraZoom, 75 * _cameraZoom);