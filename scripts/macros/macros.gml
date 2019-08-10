

//All maps will be 47 tiles wide and 27 tiles tall
#macro MAP_W 47
#macro MAP_H 27

//All isometric floor tiles will be 78pixels wide by 25 pixels tall
#macro TILE_W 74
#macro TILE_H 26

//All rooms will have pixel dimensions of 1024x768
#macro ROOM_W 1920
#macro ROOM_H 1080

//This is the number of frames, out of 60, that each frame of sprite animation will be on
#macro SPRITE_FPS 4

//All Branch Boxes will be in these locations
#macro BRANCH1_X1 250
#macro BRANCH1_Y1 410
#macro BRANCH1_X2 700
#macro BRANCH1_Y2 440

#macro BRANCH2_X1 250
#macro BRANCH2_Y1 460
#macro BRANCH2_X2 700
#macro BRANCH2_Y2 490

//This will only be used for three branch dialogs
#macro BRANCH3_X1 250
#macro BRANCH3_Y1 510
#macro BRANCH3_X2 700
#macro BRANCH3_Y2 540

//Information stored for each tile in the map (Sprite and Z height)
enum TILE
{
	SPRITE = 0,
	Z = 1,
}