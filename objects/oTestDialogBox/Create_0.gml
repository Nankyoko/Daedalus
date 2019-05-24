/// @description Populates the script with strings
// You can write your code in this editor
script = ds_list_create();
ds_list_add(script, "Where am I?");
ds_list_add(script, "Why are there only 5 places I can stand?");
ds_list_add(script, "Is.. is this hell?");
ds_list_add(script, "What did I do to deserve this?");


currentString = script[| 0];
visible = true;