/// @description Insert description here
// You can write your code in this editor
if(mouse_x > 900 && mouse_x < 1020 && !oOptionsMenu.visible) {
	if(mouse_y > 600 && mouse_y < 625) {
		room_goto(sewerMap);
	}
	if(mouse_y > 625 && mouse_y < 650) {
		room_goto(fightClub);
	}
	if(mouse_y > 650 && mouse_y < 675) {
		room_goto(jackMap);
	}
	
	if(mouse_y > 700 && mouse_y < 725) {
		oOptionsMenu.visible = true;
	}
	
	if(mouse_y > 750 && mouse_y < 775) {
		game_end();
	}
}