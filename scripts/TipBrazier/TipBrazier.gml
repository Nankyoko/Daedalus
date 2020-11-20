function TipBrazier(argument0, argument1) {
	//Takes 2 arguments, the brazier to be tipped and the direction to tip it in
	//Brazier should be passed as id, and direction should be passed as an integer
	//1 up 2 down 3 left 4 right

	var _brazier = argument0;
	var _direction = argument1;
	var _x = _brazier.currentTileX;
	var _y = _brazier.currentTileY;
	
	//All 4 loops are the same, they just do it in different directions
	
	//Up
	switch (_direction) {
	case 1:
		for(var i = 1; i < 5; i++) {
			
			//Stop if the map ends or if it hits a water tile
			if(global.theMap[# _x, _y-i][TILE.SPRITE != 0] && !global.waterLocations[# _x, _y-i]) {
				
				//Create instance of a coal tile at this area
				instance_create_depth(_x*40, (_y-i)*40,0,oCoalTile);
			} else {
				
				//Stop the loop if it collides with either event
				break;
			}
		}
		break;
	//Down
	case 2:
		for(var i = 1; i < 5; i++) {
			if(global.theMap[# _x, _y+i][TILE.SPRITE] != 0 && !global.waterLocations[# _x, _y+i]) {
				instance_create_depth(_x*40, (_y+i)*40,0,oCoalTile);
			} else {
				break;
			}
		}
		break;
	//Left
	case 3:
		for(var i = 1; i < 5; i++) {
			if(global.theMap[# _x-i, _y][TILE.SPRITE] != 0 && !global.waterLocations[# _x-i, _y]) {
				instance_create_depth((_x-i)*40, _y*40,0,oCoalTile);
			} else {
				break;
			}
		}
		break;
	//Right
	case 4:
		for(var i = 1; i < 5; i++) {
			if(global.theMap[# _x+i, _y][TILE.SPRITE] != 0 && !global.waterLocations[# _x+i, _y]) {
				instance_create_depth((_x+i)*40, _y*40,0,oCoalTile);
			} else {
				break;
			}
		}
		break;
	}
}
