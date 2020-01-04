var _player = argument0;
var _char;
for(var i = 0; i<ds_list_size(_player.characters); i++) {
	_char = ds_list_find_value(_player.characters, i);
	
	_char.turnUsed = false;
	_char.movesLeft = _char.maxMoveSpeed;
	_player.isTurn = true;
}

for(var j = 0; j<ds_list_size(global.damageTiles); j++) {
	with(ds_list_find_value(global.damageTiles, j)) {
		event_user(0);
	}
}