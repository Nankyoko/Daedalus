/// @description Advances the dialog by one, or if the conversation is over, ends it.

//Only accept the spacebar if the dialog box is visible
//Otherwise reject this whole event, like Karen rejected my invitation
//To prom senior year, and I had to go alone.  Fuck you Karen
if(visible) {
	if(position < ds_list_size(script)-1) {
		position += 1;
		currentString = script[| position];
		
		//Insert sprite switching code from converter here
		
	} else {
		
		//events that should happen after the dialog is completed get put here
		
		visible = false;
		ds_list_destroy(script);
	}
}