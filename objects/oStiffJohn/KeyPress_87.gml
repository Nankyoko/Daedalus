if(isSelected && currentTileY != 0) {
		var nextTile = global.theMap[# currentTileX, currentTileY - 1];
		//Only move if there's a tile to move on to
		if(nextTile[TILE.SPRITE] != 0 && !global.characterLocations[# currentTileX, currentTileY - 1]) {
			global.characterLocations[# currentTileX, currentTileY] = false;
			currentTileY -= 1;
		}
}