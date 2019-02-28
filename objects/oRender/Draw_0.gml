/// @description Render game
var tileData, roomX, roomY, tileIndex, tileZ;

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
		if(tileIndex !=0) draw_sprite(floorTiles, tileIndex - 1, roomX, roomY-tileZ);
	}
}
