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
draw_sprite_stretched(sStiffGwen, 0, roomX, roomY-(tileZ*_cameraZoom), 40 * _cameraZoom, 75 * _cameraZoom);

if(showDamage > 0) {
	draw_set_color(c_red);
	draw_text(roomX, roomY, damageTaken);
	showDamage--;
	draw_set_color(c_black);
}