
switch(arm_state){

	case "resting":
		arm1_rot = hand_target_resting;
		arm2_rot = hand_target_resting
	break;

	case "aiming":
		hand_target[0] = mouse_x;
		hand_target[1] = mouse_y;
		arm1_rot = point_direction(arm1_x,arm1_y,hand_target[0],hand_target[1]);
		arm2_rot = 180-point_direction(arm2_x,arm2_y,hand_target[0],hand_target[1]);
	break; 

}