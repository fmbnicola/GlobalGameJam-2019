//animations

//speeds
wiggle_speed = scr_approach(wiggle_speed,abs(xaxis)*wiggle_speed_target,2);

//body
using_ladder = false;

if(on_ladder and vspd != 0){
	wiggle_speed = scr_approach(wiggle_speed,abs(yaxis)*wiggle_speed_target,2);
	rotation = sin(rot_t) * wiggle_ammount;
	rot_t += 0.1*wiggle_speed;
	using_ladder = true;
}
else if(abs(xaxis) == 0 or phy_speed_y != 0){
	rotation = scr_approach(rotation,0,wiggle_ammount);
}
else{
	rotation = sin(rot_t) * wiggle_ammount;
	rot_t += 0.1*wiggle_speed;
	if(irandom_range(0,4) == 1){
		part_particles_create(global.part_sys,x,y+10,global.pt_dust, 1);
	}
}


//head
var temp = scr_rotate_point_pivot(x,y,0,(-200*image_yscale),-rotation);
head_x = temp[0];
head_y = temp[1];

//face

if(xaxis>0){
	face_off_target = 10;
}
else if(xaxis<0){
	face_off_target = -10;
}
else{
	face_off_target = 0;
}
face_off = scr_approach(face_off, face_off_target, 2);

var temp = scr_rotate_point_pivot(head_x,head_y,face_off,0,-rotation);
face_x = temp[0];
face_y = temp[1];

//arms 
var temp = scr_rotate_point_pivot(x,y,-20,-17,-rotation);
arm1_x = temp[0];
arm1_y = temp[1];
var temp = scr_rotate_point_pivot(x,y,+20,-17,-rotation);
arm2_x = temp[0];
arm2_y = temp[1];

