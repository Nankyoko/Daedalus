/// @description Code for when this character dies
ds_list_delete(global.characterList, ds_list_find_index(global.characterList, oStiffGwen));
visible = false;
oCharacterHUD.currentCharacter=ds_list_find_value(global.characterList, 0);
