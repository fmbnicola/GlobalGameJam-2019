var inst = instance_create_layer(724,632,"Instances",obj_small_book_f);

with inst {
	book_id = other.book_id;
	info    = other.info;
		
	physics_apply_impulse(x,y,-10,0);
}