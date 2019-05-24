//All maps will be 24 tiles wide and 18 tiles tall
#macro MAP_W 24
#macro MAP_H 18

//All isometric floor tiles will be 78pixels wide by 25 pixels tall
#macro TILE_W 78
#macro TILE_H 25

//All rooms will have pixel dimensions of 1024x768
#macro ROOM_W 1024
#macro ROOM_H 768

//All Branch Boxes will be in these locations
#macro BRANCH1_X1 250
#macro BRANCH1_Y1 410
#macro BRANCH1_X2 700
#macro BRANCH1_Y2 440

#macro BRANCH2_X1 250
#macro BRANCH2_Y1 510
#macro BRANCH2_X2 700
#macro BRANCH2_Y2 540

//Information stored for each tile in the map (Sprite and Z height)
enum TILE
{
	SPRITE = 0,
	Z = 1,
	SELECTED = true
}