/// @description Marks the current location as taken
global.characterLocations[# currentTileX, currentTileY] = true;

if(currentHP <= 0) {
	event_user(1);
}