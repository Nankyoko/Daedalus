/// @description Hopefully layers all the character sprites correctly
var tempList = ds_list_create();
var globalChar, tempChar;
var inserted;

//This, my friends, is a beautifully awful sorting algorithm
for(var i = 0; i < ds_list_size(global.characterList); i++) {
	inserted = false;
	globalChar = ds_list_find_value(global.characterList, i);
	
	//On first pass, just bump the first character into the temp list
	if(i == 0) {
			ds_list_add(tempList, globalChar);
			tempChar = ds_list_find_value(tempList, 0);
	} else {
		
		//On subsequent passes, check against all the characters in the list until you run into one higher than you
		for(var j=0; j < ds_list_size(tempList); j++) {
			tempChar = ds_list_find_value(tempList, j);
			
			//If you find a character higher than you, drop yourself in the list and skip everyone else
			if(globalChar.currentTileY > tempChar.currentTileY && !inserted) {
				ds_list_insert(tempList, j, globalChar);
				inserted = true;
			}
		}
		
		//If there isn't anyone higher than you, you go to the end of the list
		if(!inserted) {
			ds_list_add(tempList, globalChar);
		}
	}
}

AssignRenderOrder(tempList);