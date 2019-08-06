/// @description Insert description here
// You can write your code in this editor
roomX = TileToScreenX(tX, tY, oRender.cameraX, oRender.cameraZoom/2);
roomY = TileToScreenY(tX, tY, oRender.cameraY, oRender.cameraZoom/2);

if(oButtons.xrayMode) {
	if(mouse_x > roomX - 50 && mouse_x < roomX + (80*oRender.cameraZoom) + 50) {
		if(mouse_y > roomY - tZ - 50 && mouse_y < (roomY-tZ) + (80*oRender.cameraZoom) + 50) {
			visible = false;
		} else {
			visible = true;
		}
	} else { 
		visible = true;
	}
}

if(!oButtons.xrayMode) {
	visible = true;
}