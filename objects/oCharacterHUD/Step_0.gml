if(lockout > 0) {
	lockout--;
}

numInteractables = ds_list_size(currentCharacter.nearbyObjects);
numEnemies = ds_list_size(currentCharacter.nearbyEnemy);