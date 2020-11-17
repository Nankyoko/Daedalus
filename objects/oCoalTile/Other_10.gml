/// @description Insert description here
// You can write your code in this editor
if(global.characterLocations[# currentTileX, currentTileY]) {
	for(var i = 0; i < ds_list_size(global.characterList); i++) {
		var _char = ds_list_find_value(global.characterList, i);
		if(_char.currentTileX = currentTileX && _char.currentTileY = currentTileY) {
			attackCharacter(id, _char);
			break;
		}
	}
}