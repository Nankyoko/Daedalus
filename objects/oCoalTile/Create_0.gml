/// @description Insert description here
// You can write your code in this editor
currentTileX = x;
currentTileY = y;
currentTileX = currentTileX/40;
currentTileY = currentTileY/40;

ds_list_add(global.objectList, id);
alarm[0] = SPRITE_FPS;

depth = (currentTileX + currentTileY) * -100;