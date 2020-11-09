function CheckAdjacent(argument0, argument1) {
	//Checks the immediate 4 squares around whoever calls this.

	var _X = argument0;
	var _Y = argument1;

	var _n, _s, _e, _w;

	_n = global.characterLocations[# _X, _Y-1];
	_s = global.characterLocations[# _X, _Y+1];
	_e = global.characterLocations[# _X+1, _Y];
	_w = global.characterLocations[# _X-1, _Y];
	
	if(_n || _s || _e || _w) {
		return true;	
	} else {
		return false;
	}


}
