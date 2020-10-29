/// @description Layers all the characters, so the game looks real
AssignRenderOrder(global.characterList);

//Flushes the turn buffer into the turn queue if there's anything in it
flushBuffer();