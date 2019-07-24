var charList = argument0;
var char;
for(var i = 0; i<ds_list_size(charList); i++) {
	char = ds_list_find_value(charList, i);
	with (char) {
		event_perform(ev_draw_begin, 0);
	}
}