/// @description Code for when this character dies
if(!dead) {
	ds_list_delete(global.characterList, ds_list_find_index(global.characterList, oStiffGwen));
	oCharacterHUD.visible = false;
	movesLeft = 0;
	dead = true;
}
