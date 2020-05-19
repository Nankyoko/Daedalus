//Converts variables to the correct scale
currentTileX = currentTileX/40;
currentTileY = currentTileY/40;
hitRange = hitRange * 40;

ds_list_add(global.characterList, oStiffJohn);

addTurnOrder(oStiffJohn);