//Converts pixel location of Corwin to a tile location
currentTileX = currentTileX/40;
currentTileY = currentTileY/40;
alarm[0] = SPRITE_FPS;

ds_list_add(global.characterList, oIdleCorwin);

addTurnOrder(oIdleCorwin);