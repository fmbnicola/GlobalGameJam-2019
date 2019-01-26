if(book_id != -1 and info == -1){
	info = ds_grid_get_line(global.dg_books,book_id);
	
	
}

if(grabbed){
	if(not input_check(1,E_INPUT_SLOT.GRAB)){
		grabbed = false;
		physics_joint_delete(joint);
	}
}