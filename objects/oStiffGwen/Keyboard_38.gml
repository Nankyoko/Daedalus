//Move gwen up one space isometrically
var upTile = global.theMap[# currentTileX, currentTileY+1];

if(isSelected && !turnUsed) {
	if(upTile[TILE.SPRITE] != 0) {
		oStiffGwen.y = TileToScreenY(currentTileX, currentTileY+1);
		currentTileY += 1;
	}
}