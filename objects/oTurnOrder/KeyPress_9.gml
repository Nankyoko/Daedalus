/// Lists a number on each character representing turn order

//Toggle visiblity
visible = !visible;

//If this screen is visible, then you cannot end turn
oButtons.visible = !visible;

//Cycles over the already sorted turn queue
if(visible) {
	var _char;
	ds_list_clear(charList);
	for(var _i = 0; _i<ds_queue_size(global.charTurnQueue); _i++) {
		_char = ds_queue_dequeue(global.charTurnQueue);
		ds_list_add(charList, _char);
		ds_queue_enqueue(global.charTurnQueue, _char);
	}
}
