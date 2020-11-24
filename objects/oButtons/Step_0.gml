/// @description toggles visiblity based on pausing and steps the lockout timer

if(!visible) {
	xrayMode = false;	
}
if(lockout > 0) {
	lockout--;	
}