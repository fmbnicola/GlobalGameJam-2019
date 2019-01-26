if(book_id != -1 and info == -1){
	info = ds_grid_get_line(global.dg_books,book_id);
}

if(input_check_pressed(1,E_INPUT_SLOT.INSP)){
	image_index = not image_index;
}