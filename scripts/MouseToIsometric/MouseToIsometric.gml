var virtualTileX = mouse_x/40;
var virtualTileY = mouse_y/40;

var inverseTileY = MAP_H - virtualTileY;

global.isoTileX = inverseTileY + ((virtualTileX - MAP_W)/2);
global.isoTileY = inverseTileY - ((virtualTileY - MAP_H)/2);