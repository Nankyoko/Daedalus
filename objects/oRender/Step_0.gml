/// @description Hopefully layers all the character sprites correctly
var _tempList = ds_list_create();
var _globalChar, _tempChar;
var _inserted;

//This, my friends, is a beautifully awful sorting algorithm
for(var i = 0; i < ds_list_size(global.characterList); i++) {
	_inserted = false;
	_globalChar = ds_list_find_value(global.characterList, i);
	
	//On first pass, just bump the first character into the temp list
	if(i == 0) {
			ds_list_add(_tempList, _globalChar);
			_tempChar = ds_list_find_value(_tempList, 0);
	} else {
		
		//On subsequent passes, check against all the characters in the list until you run into one higher than you
		for(var j=0; j < ds_list_size(_tempList); j++) {
			_tempChar = ds_list_find_value(_tempList, j);
			
			//If you find a character higher than you, drop yourself in the list and skip everyone else
			if(_globalChar.currentTileY > _tempChar.currentTileY && !_inserted) {
				ds_list_insert(_tempList, j, _globalChar);
				_inserted = true;
			}
		}
		
		//If there isn't anyone higher than you, you go to the end of the list
		if(!_inserted) {
			ds_list_add(_tempList, _globalChar);
		}
	}
}

AssignRenderOrder(_tempList);