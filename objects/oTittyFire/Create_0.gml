/// @description Insert description here
// You can write your code in this editor
currentTileX = x;
currentTileY = y;
currentTileX = currentTileX/40;
currentTileY = currentTileY/40;

global.characterLocations[# currentTileX, currentTileY] = true;

alarm[0] = SPRITE_FPS;

depth = (currentTileX + currentTileY) * -100