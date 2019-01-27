if(y > 1080){
	instance_destroy();
	exit;
}

head.x = phy_position_x;
head.y = phy_position_y;

switch state {
	case 0:
		var coll = noone;
		
		with head {
			coll = instance_place(x,y,obj_character);
		}
		
		if(char != noone){
			if(char == coll){
				counter += 1;
			}			
		}else if(coll != noone){
			counter += 1;
			char = coll;
		}else {
			counter = 0;
			char = noone;
		}
		
		if(counter > 30){
			state = 1;
			counter = 0;
		}
	break;
	
	case 1:
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
		
		if(counter > 30){
			state = 2;
			counter = 0;
		}
	break;
	
	case 2:
		var cid = char.chr_id;
		
		var bid = global.dg_chars[# 5, cid];
		
		if(bid == book.book_id){
			score += 1000;
		}else {
			score -= 500;
			
			book.hp -= 1;
		}
		
		instance_destroy(char);
		char = noone;
		obj_level_controller.alarm[0] = 15;
		
		if(book.hp == 0){
			score -= 500;
			instance_destroy(book);
		}
		
		book = noone;
		
		state = 0;
	break;
}