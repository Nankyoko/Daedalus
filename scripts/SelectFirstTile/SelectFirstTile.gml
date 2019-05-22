var tileData;

for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY< MAP_H; tY++)
	{
		tileData = global.theMap[# tX, tY]
		if(tileData[TILE.SPRITE] != 0) {
			tileData[TILE.SELECTED] = true;
			show_debug_message("Tile selected");
		}
	}	
}