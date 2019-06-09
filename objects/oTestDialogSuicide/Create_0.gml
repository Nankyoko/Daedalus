/// @description Populates the script with strings
// You can write your code in this editor
script = ds_list_create();
ds_list_add(script, "Maybe I'll just kill myself to escape");
ds_list_add(script, "No! You musn't do that, you're too perfect!");
ds_list_add(script, "God????");
ds_list_add(script, "No, its me, John!");
ds_list_add(script, "Oh, lets tongue wrestle like two lesbians covered in oil!");

currentSprite = "Gwen";
currentFace = "Happy";
currentString = script[| 0];
visible = false;