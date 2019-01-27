
switch(arm_state){

	case "resting":
		arm1_rot_target = hand_target_resting;
		arm2_rot_target = hand_target_resting;
		arm1_rot = scr_approach(arm1_rot%360,arm1_rot_target%360 ,10);
		arm2_rot = scr_approach(arm2_rot%360,arm2_rot_target%360,10);
		
		//choose a book to select
		var wand_dist = 100000000000;
		if(instance_exists(obj_mini_wand)){
			wand_dist = distance_to_object(obj_mini_wand);
		}
		
		var closest_book   = instance_nearest(x,y,obj_small_book);
		var book_dist      = distance_to_object(closest_book);
		
		var closest_book_f = instance_nearest(x,y,obj_small_book_f);
		var book_f_dist    = distance_to_object(closest_book_f);
		
		if(book_dist > wand_dist){
			if(book_f_dist > wand_dist){
				closest_book = obj_mini_wand;
			}else {
				closest_book = closest_book_f;
			}
		}else {
			if(book_dist > book_f_dist){
				closest_book = closest_book_f;
			}
		}
		
		if(closest_book != noone and distance_to_object(closest_book) < 40){
			
			if(book_selected != noone){
				book_selected.highlight = false;
			}
			
			book_selected = closest_book;
			book_selected.highlight = true;
			
		}
		else{
			if(book_selected != noone and instance_exists(book_selected)){
				book_selected.highlight = false;
			}
			book_selected = noone;
		}
		
		//if a book is selected and grab is pressed pick book up
		if(input_check_pressed(0,E_INPUT_SLOT.GRAB) and book_selected != noone){
			book = book_selected;
			
			if(book.object_index != obj_mini_wand){
				if(book.state == "back"){
					book.state = "go_to_side";
				}
			}
			
			book_joint[0] = physics_joint_distance_create(id,book,x,y,book.x,book.y,false);
			book_joint[1] = physics_joint_distance_create(id,book,x,y,book.x,book.y,false);
			arm_state = "pickupbook";
		}
		
	break;

	case "pickupbook":
	
		if(!instance_exists(book)){
			arm_state = "resting";
			exit;
		}
	
		hand_target[0] = book.x;
		hand_target[1] = book.y;
		arm1_rot_target = point_direction(arm1_x,arm1_y,hand_target[0],hand_target[1]);
		arm2_rot_target = 180-point_direction(arm2_x,arm2_y,hand_target[0],hand_target[1]);
		arm1_rot = arm1_rot_target;
		arm2_rot = arm2_rot_target;
		
		var pivot = instance_nearest(x,y,obj_pivot);
		
		//if let go of grab on ledge, store book
		if(input_check_released(0,E_INPUT_SLOT.GRAB) and book != noone and place_meeting(book.x,book.y,obj_bookcase) and pivot.free = true){
			
			if(book.object_index != obj_mini_wand){
				book.state = "go_to_back";
			}
			
			arm_state = "resting";
			physics_joint_delete(book_joint[0]);
			physics_joint_delete(book_joint[1]);
			book = noone;
		}
		
		//if grab is released let go of book
		else if((input_check_released(0,E_INPUT_SLOT.GRAB) or distance_to_object(book) > 45) and book != noone){
			book = noone;
			physics_joint_delete(book_joint[0]);
			physics_joint_delete(book_joint[1]);
			arm_state = "resting";
		}
	break; 

}