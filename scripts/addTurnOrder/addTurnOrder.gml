var _char = argument0;

var _turn = random_range(0, 20);

_turn += _char.turnOrderBonus;

if(ds_list_empty(global.charTurnList)) {
	ds_list_add(global.charTurnList, _char);
	_char.turnOrder=_turn;
} else {
	var i = 0;
	while(i < ds_list_size(global.charTurnList) && _turn < ds_list_find_value(global.charTurnList, i).turnOrder) {
		i++;
	}
	if(i < ds_list_size(global.charTurnList)) {
		ds_list_insert(global.charTurnList, i, _char);
	} else {
		ds_list_add(global.charTurnList, _char);
	}
	_char.turnOrder=_turn;
}

