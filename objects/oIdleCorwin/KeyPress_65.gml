if(isSelected && currentTileX != 0 && movesLeft > 0) {
		var nextTile = global.theMap[# currentTileX - 1, currentTileY];
		//Only move if there's a tile to move on to
		if(nextTile[TILE.SPRITE] != 0 && !global.characterLocations[# currentTileX - 1, currentTileY]) {
			global.characterLocations[# currentTileX, currentTileY] = false;
			currentTileX -= 1;
			movesLeft--;
			CharListInteractables(oIdleCorwin);
		}
}