//Moves the current char to the back of the queue and refreshes the new char's turn stats
function passTurn(){
	
	//Move the old char to the back and set turn to used
	var _oldChar = ds_queue_dequeue(global.charTurnQueue);
	_oldChar.movesLeft = 0;
	_oldChar.turnUsed = true;
	_oldChar.isSelected = false;
	ds_queue_enqueue(global.charTurnQueue, _oldChar);
	
	//Clears dead characters from queue
	while(ds_queue_head(global.charTurnQueue).dead) {
		ds_queue_dequeue(global.charTurnQueue);	
	}
	
	//Reset new chars turn stats
	var _newChar = ds_queue_head(global.charTurnQueue);
	_newChar.movesLeft = _newChar.maxMoveSpeed;
	_newChar.turnUsed = false;
	_newChar.isSelected = true;
	oCharacterHUD.visible = true;
	oCharacterHUD.currentCharacter = _newChar;
	
	//If character is on damaging tiles, take damage
	checkDamageTiles(_newChar);
	//List the character interactables
	CharListInteractables(_newChar);
	_newChar.rangedEnemies = rangedVision(_newChar, _newChar.hitRange);
}