/// @description Listens for controller inputs
if(gamepad_button_check_pressed(0, gp_padu)) {
	keyboard_key_press(ord("W"));
	keyboard_key_release(ord("W"));
} else if(gamepad_button_check_pressed(0, gp_padl)) {
	keyboard_key_press(ord("A"));
	keyboard_key_release(ord("A"));
} else if(gamepad_button_check_pressed(0, gp_padd)) {
	keyboard_key_press(ord("S"));
	keyboard_key_release(ord("S"));
} else if(gamepad_button_check_pressed(0, gp_padr)) {
	keyboard_key_press(ord("D"));
	keyboard_key_release(ord("D"));
}