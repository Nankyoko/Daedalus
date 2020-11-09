/// @description Marks the current location as taken
global.characterLocations[# currentTileX, currentTileY] = true;

nearbyObjects = CharListInteractables(oIdleCorwin);

if(currentHP <= 0) {
	event_user(1);
}