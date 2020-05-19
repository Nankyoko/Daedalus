//Converts pixel location of gwen to a tile location
currentTileX = currentTileX/40;
currentTileY = currentTileY/40;
hitRange = hitRange * 40;

ds_list_add(global.characterList, oStiffGwen);

addTurnOrder(oStiffGwen);