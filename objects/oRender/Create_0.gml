/// @description Build the map

//Hides the flat map
layer_set_visible("map", false);

//Edit Map width and height in macros
global.theMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("map");

//Renders the map one column at a time, vertically
for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++)
	{
		var tileMapData = tilemap_get(tileMap, tX, tY);
		
		//Format: [Sprite, Z height]
		//0 = blank, 1 = grey
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		//All tiles are level in this renderer
		thisTile[TILE.Z] = 0;
		global.theMap[# tX, tY] = thisTile;
	}
}