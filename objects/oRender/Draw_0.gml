/// @description Render game
var tileData, roomX, roomY, tileIndex, tileZ;

//Render each tile in column order
for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY< MAP_H; tY++)
	{
		//Populate the data needed to render each tile from each tile
		tileData = global.theMap[# tX, tY];
		roomX = TileToScreenX(tX, tY, cameraX, cameraZoom/2);
		roomY = TileToScreenY(tX, tY, cameraY, cameraZoom/2);
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		//As long as its not a blank tile, draw it
		if(tileIndex !=0) {
			
			//For some reason this logic is backwards, but it works and as long as we do switches instead
			//actual setting it will be fine.
			
			//I'll set your fuckin' mom
			if(tileData[TILE.SELECTED]) {
				draw_sprite_stretched(sIsometricTiles, tileIndex - 1, roomX, roomY-tileZ, 80 * cameraZoom, 80 * cameraZoom)
			} else {
				//draw_sprite(sIsometricTiles, tileIndex - 1, roomX, roomY-tileZ);
				draw_sprite_stretched(sIsometricTiles, tileIndex - 1, roomX, roomY-tileZ, 80 * cameraZoom, 80 * cameraZoom)
			}
		}
	}
}
