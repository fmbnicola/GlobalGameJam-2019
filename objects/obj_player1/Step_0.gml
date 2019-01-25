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
	vspd = lengthdir_y(len,dir);

	phy_position_x += hspd;
	phy_position_y += vspd;
}
