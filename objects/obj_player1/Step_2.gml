//animations

//speeds
wiggle_speed = scr_approach(wiggle_speed,abs(xaxis)*wiggle_speed_target,2);

//body
if(abs(xaxis) == 0 or phy_speed_y != 0){
	rotation = scr_approach(rotation,0,wiggle_ammount);
}
else{
	rotation = sin(rot_t) * wiggle_ammount;
	rot_t += 0.1*wiggle_speed;
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