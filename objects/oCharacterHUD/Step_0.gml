if(lockout > 0) {
	lockout--;
}

if(CheckAdjacent(currentCharacter.currentTileX, currentCharacter.currentTileY)) {
	interactable = true;
} else {
	interactable = false;
}

numInteractables = ds_list_size(currentCharacter.nearbyObjects);