if(isSelected) {
		var nextTile = global.theMap[# currentTileX + 1, currentTileY];
		//Only move if there's a tile to move on to
		if(nextTile[TILE.SPRITE] != 0) {
			currentTileX += 1;
		}
}