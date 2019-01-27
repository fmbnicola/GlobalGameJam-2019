if(hp > 0){
	var inst = instance_create_layer(1152,-264,"Instances",obj_book);

	with inst {
		book_id = other.book_id;
		hp      = other.hp
		info    = other.info;
	}
}