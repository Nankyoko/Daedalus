/// @description Insert description here
// You can write your code in this editor
var roomX, roomY;
var tile;
var tileZ;
var _cameraX, _cameraY, _cameraZoom;

_cameraX = oRender.cameraX;
_cameraY = oRender.cameraY;
_cameraZoom = oRender.cameraZoom;


for(var _i = 0; _i<ds_list_size(charList); _i++) {
	var _char = ds_list_find_value(charList, _i);
	//The tile Gwen is currently standing on
	tile = global.theMap[# _char.currentTileX, _char.currentTileY];

	//Translates tile numbers to pixel locations for rendering
	//I super don't recommend changing any of these values, since it centers the character on the tile
	roomX = TileToScreenX(_char.currentTileX, _char.currentTileY, _cameraX, _cameraZoom/2) + _cameraZoom * 20;
	roomY = TileToScreenY(_char.currentTileX, _char.currentTileY, _cameraY, _cameraZoom/2) - _cameraZoom * 25;

	tileZ = tile[TILE.Z];
	UIRectangle(sTestUIRectangle, roomX, roomY-(tileZ*_cameraZoom), roomX+25, roomY-(tileZ*_cameraZoom)+25);
	draw_text(roomX+10, roomY-(tileZ*_cameraZoom)+10, _i + 1);
}