function ChangeSprite(argument0, argument1) {
	//Draws the sprite given to it in the call line

	//This is the code to set the algorithm for getting sprites from "sStiffSprites" for dialog boxes
	var character = argument0;
	var face = argument1;
	var spriteNumber = 0;

	//Currently different faces aren't implemented so it's commented out
	//var face = argument1;

	//Example of fully implemented, assuming each character gets 5 emotion sprites
	//Gwen will be 0-4, John would be 5-9, etc.

	//if(character = "Gwen" || character = "gwen") {
	//	spriteNumber = 0;
	//} else if (character = "John" || character = "john") {
	//	spriteNumber = 5;
	//}

	//if(face = "happy") {
	//	spriteNumber += 0;
	//} else if(face = "angry") {
	//  spriteNumber += 1;
	//}

	//Allows for capitalizing or not capitalized names
	if(character = "Gwen" || character = "gwen") {
		spriteNumber = 0;
	} else if (character = "John" || character = "john") {
		spriteNumber = 1;
	} else if (character = "Corwin" || character = "corwin") {
		spriteNumber = 2;
	}

	if(face = "happy" || face = "Happy") {
		spriteNumber += 0;	
	}
 
	return spriteNumber;


}
