var inst = instance_create_layer(724,632,"Instances",obj_small_book_f);

with inst {
	book_id = other.book_id;
	info    = other.info;
		
	physics_apply_impulse(x,y,-50,0);
	physics_apply_angular_impulse(40);
	
	scr_play_sounds(snd_swoosh);
	scr_play_sounds(snd_bookdrop1,snd_bookcrop3,snd_bookdrop2);
	scr_play_sounds(snd_dunk1,snd_dunk3)
}