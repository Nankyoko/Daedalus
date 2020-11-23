// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flushBuffer(){
	
	//If there is nothing in the buffer, skip everything
	if(!ds_list_empty(global.charTurnBuffer)) {
		
		//Fill the queue from the sorted turn buffer
		for(var i = 0; i < ds_list_size(global.charTurnBuffer); i++) {
			ds_queue_enqueue(global.charTurnQueue, ds_list_find_value(global.charTurnBuffer, i));
		}
		
		//Clear the buffer
		ds_list_clear(global.charTurnBuffer);
		
		//Selects the top character in the queue (this is only important the first time the level loads)
		var _newChar = ds_queue_head(global.charTurnQueue);
		_newChar.movesLeft = _newChar.maxMoveSpeed;
		_newChar.turnUsed = false;
		_newChar.isSelected = true;
		oCharacterHUD.visible = true;
		oCharacterHUD.currentCharacter = _newChar;
		//uwu
	}
}