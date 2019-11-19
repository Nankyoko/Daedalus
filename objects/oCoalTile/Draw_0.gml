/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
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
roomX = TileToScreenX(currentTileX, currentTileY, _cameraX, _cameraZoom/2) + _cameraZoom;
roomY = TileToScreenY(currentTileX, currentTileY, _cameraY, _cameraZoom/2) - _cameraZoom;

tileZ = tile[TILE.Z];
roomZ = tileZ;

draw_sprite_stretched(sCoals, spriteframe, roomX, roomY-(roomZ*(_cameraZoom)), 80 * _cameraZoom, 80 * _cameraZoom);