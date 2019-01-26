//get axis
xaxis = input_check_analogue( 0, E_INPUT_SLOT.RIGHT ) - input_check_analogue( 0, E_INPUT_SLOT.LEFT );
yaxis = input_check_analogue( 0, E_INPUT_SLOT.DOWN  ) - input_check_analogue( 0, E_INPUT_SLOT.UP   );


//Calculate direction
dir = point_direction( 0, 0, xaxis, yaxis);

//set len
len = 0;
if(xaxis != 0 || yaxis != 0){
	len = round(speed);	
}else {
	len = 0;
}


//Move
if(len != 0){
	
	//get the hspd and vspd
	hspd = lengthdir_x(len,dir);

	phy_position_x += hspd;
}


//initial single press jump
if(input_check(0,E_INPUT_SLOT.JUMP) and can_jump = true and place_meeting(x,y,obj_wall)){
	if(jump_start){
		jump_start = false;
		alarm_set(2,room_speed*jump_hold_time);
	}
	physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(6000,90),lengthdir_y(6000,90))
}
//prolonged jump
else if(jump_start ==false and input_check(0,E_INPUT_SLOT.JUMP)){
	physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(220,90),lengthdir_y(220,90))
}