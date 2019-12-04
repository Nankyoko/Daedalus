//Takes 2 arguments, the brazier to be tipped and the direction to tip it in
//Brazier should be passed as id, and direction should be passed as an integer
//1 up 2 down 3 left 4 right

var _brazier = argument0;
var _direction = argument1;
var _x = _brazier.currentTileX;
var _y = _brazier.currentTileY;

//Up
if(_direction == 1) {
	for(var i = 1; i < 5; i++) {
		if(_y - i > 0) {
			if(!global.waterLocations[# _x, _y-i]) {
				instance_create_depth(_x*40, (_y-i)*40,0,oCoalTile);
			} else {
				break;
			}
		}
	}
//Down
} else if(_direction == 2) {
	for(var i = 1; i < 5; i++) {
		if(_y + i < MAP_H) {
			if(!global.waterLocations[# _x, _y+i]) {
				instance_create_depth(_x*40, (_y+i)*40,0,oCoalTile);
			} else {
				break;
			}
		}
	}
//Left
} else if(_direction == 3) {
	for(var i = 1; i < 5; i++) {
		if(_x - i > 0) {
			if(!global.waterLocations[# _x-i, _y]) {
				instance_create_depth((_x-i)*40, _y*40,0,oCoalTile);
			} else {
				break;
			}
		}
	}
//Right
} else if(_direction == 4) {
	for(var i = 1; i < 5; i++) {
		if(_x + i < MAP_W) {
			if(!global.waterLocations[# _x+i, _y]) {
				instance_create_depth((_x+i)*40, _y*40,0,oCoalTile);
			} else {
				break;
			}
		}
	}
}