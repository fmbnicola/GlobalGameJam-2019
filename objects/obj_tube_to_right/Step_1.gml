var bk = instance_place(x,y,obj_small_book);

if(bk != noone){
	instance_destroy(bk);
}

var wn = instance_place(x,y,obj_mini_wand);

//obj_player1.arm_state = "resting";

if(wn != noone){
	obj_player1.arm_state = "resting";
	instance_destroy(wn);
}