/// @description Build the map

//Hides the flat map and the height map
layer_set_visible("map", false);
layer_set_visible("heightmap", false);

//Edit Map width and height in macros
global.theMap = ds_grid_create(MAP_W, MAP_H);

//Pulls in the maps to get the individual tile information out of each
var tileMap = layer_tilemap_get_id("map");
var heightMap = layer_tilemap_get_id("heightmap");

//Renders the map one column at a time, vertically
for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++)
	{
		//Grab the specific tile from each map to get Sprite and Height information
		var tileMapData = tilemap_get(tileMap, tX, tY);
		var heightMapData = tilemap_get(heightMap, tX, tY);
		
		//Format: [Sprite, Z height]
		//-1 is an error escape incase something strange happens
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		
		//All tiles are level in this renderer
		thisTile[TILE.Z] = heightMapData*20;
		global.theMap[# tX, tY] = thisTile;
	}
}