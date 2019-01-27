if(y > 1080){
	instance_destroy();
	
	exit;
}

if(grabbed and alarm[1] == -1){
	if(input_check_pressed(1,E_INPUT_SLOT.INSP)){
		
		scr_play_sounds(snd_jump);
		
		state += 1;
		state  = state mod 2;
		alarm[1] = 10;
	}
}