//Converts pixel location of Corwin to a tile location
currentTileX = currentTileX/40;
currentTileY = currentTileY/40;
hitRange = hitRange * 40;
alarm[0] = SPRITE_FPS;

global.characterLocations[# currentTileX, currentTileY] = true;

ds_list_add(global.characterList, oIdleCorwin);