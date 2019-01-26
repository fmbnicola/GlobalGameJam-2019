
switch(arm_state){

	case "resting":
		arm1_rot_target = hand_target_resting;
		arm2_rot_target = hand_target_resting;
		arm1_rot = scr_approach(arm1_rot%360,arm1_rot_target%360 ,10);
		arm2_rot = scr_approach(arm2_rot%360,arm2_rot_target%360,10);
	break;

	case "ladder":
	case "pickupbook":
		hand_target[0] = mouse_x;
		hand_target[1] = mouse_y;
		arm1_rot_target = point_direction(arm1_x,arm1_y,hand_target[0],hand_target[1]);
		arm2_rot_target = 180-point_direction(arm2_x,arm2_y,hand_target[0],hand_target[1]);
		arm1_rot = arm1_rot_target;
		arm2_rot = arm2_rot_target;
	break; 

}