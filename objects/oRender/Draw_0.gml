/// @description Render game
var tileData, roomX, roomY, tileIndex, tileZ;

for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY< MAP_H; tY++)
	{
		tileData = global.theMap[# tX, tY];
		roomX = TileToScreenX(tX, tY);
		roomY = TileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		if(tileIndex !=0) draw_sprite(testingSet, tileIndex - 1, roomX, roomY-tileZ);
	}
}
