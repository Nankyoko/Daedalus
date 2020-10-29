function addTurnOrder(argument0) {
	var _char = argument0;
	
	//Roll a D20
	var _turn = random_range(0, 20);
	
	//Add character's DEX bonus
	_turn += _char.turnOrderBonus;
	
	//If the list is empty, insert character immediately
	if(ds_list_empty(global.charTurnBuffer)) {
		ds_list_add(global.charTurnBuffer, _char);
		_char.turnOrder=_turn;
	} else {
		var i = 0;
		
		//Cycle through the buffer, and insert in appropriate initiative order
		while(i < ds_list_size(global.charTurnBuffer) && _turn < ds_list_find_value(global.charTurnBuffer, i).turnOrder) {
			i++;
		}
		
		//If not at the end, insert
		if(i < ds_list_size(global.charTurnBuffer)) {
			ds_list_insert(global.charTurnBuffer, i, _char);
		//Else tack onto the end
		} else {
			ds_list_add(global.charTurnBuffer, _char);
		}
		_char.turnOrder=_turn;
	}
}
