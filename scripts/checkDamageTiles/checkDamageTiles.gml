// Does % health damage for standing on tiles (.1 or 10% of health for coal tiles)
function checkDamageTiles(_char){
	
	for(var i = 0; i < ds_list_size(global.damageTiles); i++) {
		var _tile = ds_list_find_value(global.damageTiles, i);
		if(_tile.currentTileX = _char.currentTileX) {
			if(_tile.currentTileY = _char.currentTileY) {
				_char.currentHP -= _char.maxHP * _tile.damage;
				_char.showDamage = 60;
				_char.damageTaken = _char.maxHP * _tile.damage;
			}
		}
	}
}