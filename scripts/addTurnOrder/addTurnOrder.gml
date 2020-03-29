var _char = argument0;

var _turn = random_range(0, 20);

_turn += _char.turnOrderBonus;

if(ds_list_empty(global.charTurnList)) {
	ds_list_add(global.charTurnList, _char);
} else {
	var i = 0;
	while(_turn < global.charTurnList.turnOrder && i < ds_list_size(global.charTurnList)) {
		i++;
	}
	if(i < ds_list_size(global.charTurnList)) {
		ds_list_insert(global.charTurnList, i, _char);
	} else {
		ds_list_add(global.charTurnList, _char);
	}
}