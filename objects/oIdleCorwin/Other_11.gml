/// @description Code for when this character dies
if(!dead) {
	ds_list_delete(global.characterList, ds_list_find_index(global.characterList, oStiffJohn));
	oCharacterHUD.visible = false;
	//oCharacterHUD.currentCharacter=ds_list_find_value(global.characterList, 0);
	dead = true;
}
