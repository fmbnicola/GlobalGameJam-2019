if(hp > 0){
	var inst = instance_create_layer(724,632,"Instances",obj_small_book);
	with inst {
		book_id = other.book_id;
		info    = other.info;
		hp      = other.hp
		
		physics_apply_impulse(x,y,-10,0);
	}
}