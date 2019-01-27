/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_player1) and abs(obj_player1.x - x) < 30){
	
	with obj_player1{
		
		phy_speed_y = 0;
		vspd = lengthdir_y(len,dir);
		phy_position_y += vspd;
		on_ladder = true;
		
	}
}
else{
	obj_player1.on_ladder = false;
}

