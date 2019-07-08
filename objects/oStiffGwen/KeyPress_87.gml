if(isSelected) {
		var nextTile = global.theMap[# currentTileX, currentTileY - 1];
		//Only move if there's a tile to move on to
		if(nextTile[TILE.SPRITE] != 0) {
			currentTileY -= 1;
		}
}