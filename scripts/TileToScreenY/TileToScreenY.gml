function TileToScreenY(argument0, argument1, argument2, argument3) {
	var _tX = argument0;
	var _tY = argument1;
	var _cameraY = argument2;
	var _zoom = argument3;
	//Places each tile on the map isometrically **Do not edit these values**
	//So help me god if these get changed I'll eat your butt

	//The above comment is now useless, however I will still eat butt
	//Hmu <3
	return ((_tX + _tY) * (TILE_H * _zoom)) + (ROOM_H * _cameraY);


}
