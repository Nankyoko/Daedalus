/// @description Build the map

//Hides the flat map and the height map
layer_set_visible("map", false);
layer_set_visible("heightmap", false);
layer_set_visible("wallmap", false);
layer_set_visible("wallheightmap", false);
visible = false;
//Set some global things, since this will always be created first
draw_set_color(c_black);
//Edit Map width and height in macros
global.theMap = ds_grid_create(MAP_W, MAP_H);
global.theWallMap = ds_grid_create(MAP_W, MAP_H);
global.characterLocations = ds_grid_create(MAP_W, MAP_H);
global.characterList = ds_list_create();

//Pulls in the maps to get the individual tile information out of each
var tileMap = layer_tilemap_get_id("map");
var heightMap = layer_tilemap_get_id("heightmap");
var wallMap = layer_tilemap_get_id("wallmap");
var wallHeightMap = layer_tilemap_get_id("wallheightmap");

//Renders the map one column at a time, vertically
for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++)
	{
		//Grab the specific tile from each map to get Sprite and Height information
		var tileMapData = tilemap_get(tileMap, tX, tY);
		var heightMapData = tilemap_get(heightMap, tX, tY);
		var wallMapData = tilemap_get(wallMap, tX, tY);
		var wallheightMapData = tilemap_get(wallHeightMap, tX, tY);
		//Format: [Sprite, Z height]
		//-1 is an error escape incase something strange happens
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		
		var thisWallTile = [-1, 0];
		thisWallTile[TILE.SPRITE] = wallMapData;
		//Renders each tile at its height according to the height map
		//Change the *26.5 in order to change overall render height
		thisTile[TILE.Z] = heightMapData*26.5;
		thisWallTile[TILE.Z] = (wallheightMapData*26.5) - 31;
		global.theMap[# tX, tY] = thisTile;
		global.theWallMap[# tX, tY] = thisWallTile;
		global.characterLocations[# tX, tY] = false;
		
		//Look, I'm not happy about having each tile be an object either but they 
		//basically have no internal processes so its not that awful
		if(thisWallTile[TILE.SPRITE] != 0) {
			var wall = instance_create_depth(tX, tY, ((tY - 1) + tX) * -100, oWallTile);
			wall.sprite = thisWallTile[TILE.SPRITE];
			wall.roomZ = thisWallTile[TILE.Z];
			wall.tZ = heightMapData;
		}
		
		if(thisTile[TILE.SPRITE] != 0) {
			var tile = instance_create_depth(tX, tY, ((tY -.5) + tX) * -100, oFloorTile);
			tile.sprite = thisTile[TILE.SPRITE];
			tile.roomZ = thisTile[TILE.Z];
			tile.tZ = heightMapData;
		}
	}
}