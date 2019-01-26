
switch(arm_state){

	case "resting":
		arm1_rot_target = hand_target_resting;
		arm2_rot_target = hand_target_resting;
		arm1_rot = scr_approach(arm1_rot%360,arm1_rot_target%360 ,10);
		arm2_rot = scr_approach(arm2_rot%360,arm2_rot_target%360,10);
		
		//choose a book to select
		var closest_book = instance_nearest(x,y,obj_small_book);
		
		if(closest_book != noone and distance_to_object(closest_book) < 30){
			
			if(book_selected != noone){
				book_selected.highlight = false;
			}
			
			book_selected = closest_book;
			book_selected.highlight = true;
			
		}
		else{
			if(book_selected != noone){
				book_selected.highlight = false;
			}
			book_selected = noone;
		}
		
		//if a book is selected and grab is pressed pick book up
		if(input_check_pressed(0,E_INPUT_SLOT.GRAB) and book_selected != noone){
			book = book_selected;
			book_joint[0] = physics_joint_distance_create(id,book,x,y,book.x,book.y,false);
			book_joint[1] = physics_joint_distance_create(id,book,x,y,book.x,book.y,false);
			arm_state = "pickupbook";
		}
		
	break;

	case "pickupbook":
		hand_target[0] = book.x;
		hand_target[1] = book.y;
		arm1_rot_target = point_direction(arm1_x,arm1_y,hand_target[0],hand_target[1]);
		arm2_rot_target = 180-point_direction(arm2_x,arm2_y,hand_target[0],hand_target[1]);
		arm1_rot = arm1_rot_target;
		arm2_rot = arm2_rot_target;
		
		//if grab is released let go of book
		if((input_check_released(0,E_INPUT_SLOT.GRAB) or distance_to_object(book) > 30) and book != noone){
			book = noone;
			physics_joint_delete(book_joint[0]);
			physics_joint_delete(book_joint[1]);
			arm_state = "resting";
		}
	break; 

}