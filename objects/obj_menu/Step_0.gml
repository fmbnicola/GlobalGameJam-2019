
menu_move = input_check_pressed(0,E_INPUT_SLOT.DOWN) - input_check_pressed(0,E_INPUT_SLOT.UP);

if(menu_move!=0){
	scr_play_sounds(snd_menu1);
}

menu_index += menu_move;

if(menu_index < 0) menu_index = buttons -1;
if(menu_index > buttons - 1) menu_index = 0;

var i = 0;
repeat(buttons){
	if(unfold[i] ==	1) i++;
	if(i < buttons) unfold[i] = min(1,	unfold[i] + .02);
	if(i + 1 < buttons) unfold[i+1] = min(1,	unfold[i+1] + .005);

}
//if(menu_index != last_selected) audio_play_sound(----,1,false);

last_selected = menu_index;


if( gamepad_button_check_pressed(0,gp_face1) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)){

	scr_play_sounds(snd_menu2);

	switch(menu_index){
		case 0:
			alarm_set(0,room_speed*0.3);
			break;
		case 2:
			alarm_set(1,room_speed*0.3);
			break;
	}

}