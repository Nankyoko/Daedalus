/// @description Render game
var tileData, roomX, roomY, tileIndex, tileZ;

//Aquire the location of the mouse at the start of each frame and convert it to an isometric tile
MouseToIsometric();

//Render each tile in column order
for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY< MAP_H; tY++)
	{
		//Populate the data needed to render each tile from each tile
		tileData = global.theMap[# tX, tY];
		roomX = TileToScreenX(tX, tY);
		roomY = TileToScreenY(tX, tY);
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		//As long as its not a blank tile, draw it
		if(tileIndex !=0) {
			if(global.isoTileX == tX && global.isoTileY == tY) {
				draw_sprite(sSelectedTiles, tileIndex - 1, roomX, roomY-tileZ);
			} else {
				draw_sprite(sIsometricTiles, tileIndex - 1, roomX, roomY-tileZ);
			}
		}
	}
}
