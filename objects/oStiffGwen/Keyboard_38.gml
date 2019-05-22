//Not working at all

//Move gwen up one space isometrically
var upTile = global.theMap[# currentTileX+1, currentTileY-1];

if(isSelected && !turnUsed) {
	if(upTile[TILE.SPRITE] != 0) {
		oStiffGwen.y = TileToScreenY(currentTileX, currentTileY-1);
		oStiffGwen.x = TileToScreenX(currentTileX+1, currentTileY);
		currentTileY -= 1;
		currentTileX += 1;
	}
}