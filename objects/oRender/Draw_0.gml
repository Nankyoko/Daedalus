/// @description Render the map
var tileData, roomX, roomY, tileIndex, tileZ;
var wallTileData, wallTileIndex, wallTileZ;

//Render each tile in column order
for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY< MAP_H; tY++)
	{
		//Populate the data needed to render each tile from each tile
		tileData = global.theMap[# tX, tY];
		wallTileData = global.theWallMap[# tX, tY];
		roomX = TileToScreenX(tX, tY, cameraX, cameraZoom/2);
		roomY = TileToScreenY(tX, tY, cameraY, cameraZoom/2);
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		wallTileIndex = wallTileData[TILE.SPRITE];
		wallTileZ = wallTileData[TILE.Z];
		//As long as its not a blank tile, draw it
		if(wallTileIndex != 0) {
			draw_sprite_stretched(sWallTiles, wallTileIndex - 1, roomX, roomY-(wallTileZ), 80 * cameraZoom, 80 * cameraZoom);
		}
		if(tileIndex !=0) {
			draw_sprite_stretched(sIsometricTiles, tileIndex - 1, roomX, roomY-tileZ, 80 * cameraZoom, 80 * cameraZoom);
		}
	}
}