//Checks the immediate 8 squares around whoever calls this.
var char = argument0;

var _X = char.currentTileX;
var _Y = char.currentTileY;

var _n, _s, _e, _w, _ne, _nw, _se, _sw;

_n = global.characterLocations[# _X, _Y-1];
_s = global.characterLocations[# _X, _Y+1];
_e = global.characterLocations[# _X+1, _Y];
_w = global.characterLocations[# _X-1, _Y];

_ne = global.characterLocations[# _X+1, _Y-1];
_nw = global.characterLocations[# _X-1, _Y-1];
_se = global.characterLocations[# _X+1, _Y+1];
_sw = global.characterLocations[# _X-1, _Y+1];

if(_n || _s || _e || _w || _ne || _nw || _se || _sw) {
	return true;	
} else {
	return false;
}