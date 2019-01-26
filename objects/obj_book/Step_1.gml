if(grabbed){
	if(not input_check(1,E_INPUT_SLOT.GRAB)){
		grabbed = false;
		physics_joint_delete(joint);
	}
}