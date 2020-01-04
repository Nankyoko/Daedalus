var _player = argument0;
var _char;
for(var i = 0; i<ds_list_size(_player.characters); i++) {
	_char = ds_list_find_value(_player.characters, i);
	
	_char.turnUsed = true;
	_char.movesLeft = 0;
	_player.isTurn = false;
}