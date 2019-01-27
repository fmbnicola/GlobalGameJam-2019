if(hp > 0){
	var inst = instance_create_layer(724,632,"Instances",obj_small_book);
	with inst {
		book_id = other.book_id;
		info    = other.info;
		hp      = other.hp
		
		physics_apply_impulse(x,y,-50,0);
		physics_apply_angular_impulse(40);
		
		scr_play_sounds(snd_swoosh);
		scr_play_sounds(snd_bookdrop1,snd_bookcrop3,snd_bookdrop2);
		scr_play_sounds(snd_dunk1,snd_dunk3)
	}
}