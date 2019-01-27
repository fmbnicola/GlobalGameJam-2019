if(y > 1080){
	instance_destroy();
	exit;
}

head.x = phy_position_x;
head.y = phy_position_y;


if(grabbed and alarm[0] == -1){
	var inspect = false;
	
	if(input_check(1,E_INPUT_SLOT.INSP)){
		inspect = true;
	}

	switch state {
		case 0:
			if(inspect and instance_exists(obj_character)){
				state = 1;
			}
		break;
	
		case 1:
			if(inspect){
				var coll = noone;
		
				with head {
					coll = instance_place(x,y,obj_book);
				}
		
				if(book != noone){
					if(book == coll){
						counter += 1;
					}else {
						counter = 1;
						book = coll;
					}
				}else if(coll != noone){
					counter += 1;
					book = coll;
				}else {
					counter = 0;
					book = noone;
				}
		
				if(counter > room_speed * 1.5){
					state   = 2;
					counter = 0;
				}
			}else {
				char    = noone;
				book    = noone;
				counter = 0;
				state   = 0;
			}
		break;
	
		case 2:
			char = obj_character.id;
			
			var cid = char.chr_id;
		
			var bid = global.dg_chars[# 5, cid];
		
			if(bid == book.book_id){
				score += 1000;
				scr_play_sounds(snd_good);
			}else {
				score -= 500;
				scr_play_sounds(snd_bad);
				book.hp -= 1;
			}
		
			instance_destroy(char);
			char = noone;
			obj_level_controller.alarm[0] = 15;
		
			if(book.hp == 0){
				score -= 500;
				scr_play_sounds(snd_bad);
				instance_destroy(book);
			}
		
			book = noone;
		
			alarm[0] = 2 * room_speed;
			state = 0;
		break;
	}
}else {
	char    = noone;
	book    = noone;
	counter = 0;
	state   = 0;
}