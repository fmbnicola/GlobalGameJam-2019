/// @description Insert description here
// You can write your code in this editor
if(target == noone){
	exit;
}
else if(target == "mouse"){
	phy_position_x = mouse_x;
	phy_position_y = mouse_y;
}

if(room == rm_level){
	phy_position_x = clamp((phy_position_x div 2) + 1080,0,1860);
	phy_position_y = (phy_position_y div 2) + 600;
}