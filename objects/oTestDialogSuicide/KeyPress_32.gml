/// @description Advances the dialog by one, or if the conversation is over, ends it.

//Only accept the spacebar if the dialog box is visible
//Otherwise reject this whole event, like Karen rejected my invitation
//To prom senior year, and I had to go alone.  Fuck you Karen
if(visible) {
	if(position < ds_list_size(script)-1) {
		position += 1;
		currentString = script[| position];
		if(position = 1 || position = 3) {
			currentSprite = "John";
		}
		if(position = 2 || position = 4) {
			currentSprite = "Gwen";	
		}
	} else {
		visible = false;
		ds_list_destroy(script);
		game_end(ev_game_end);
	}
}