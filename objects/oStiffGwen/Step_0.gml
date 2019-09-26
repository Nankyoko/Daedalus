/// @description Marks the current location as taken and collects the list of nearby objects
global.characterLocations[# currentTileX, currentTileY] = true;

nearbyObjects = CharListInteractables(oStiffGwen);