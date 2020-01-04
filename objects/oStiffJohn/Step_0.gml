/// @description Marks the current location as taken
global.characterLocations[# currentTileX, currentTileY] = true;

nearbyObjects = CharListInteractables(oStiffJohn);

if(movesLeft = 0) {
	turnUsed = true;
}

if(currentHP <= 0) {
	event_user(1);
}