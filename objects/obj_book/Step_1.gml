if(input_check_pressed(1,E_INPUT_SLOT.INSP) and alarm[1] == -1){
	state += 1;
	state = state mod 2;
	alarm[1] = 10;
}