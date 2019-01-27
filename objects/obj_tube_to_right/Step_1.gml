var bk = instance_place(x,y,obj_small_book);

if(bk != noone){
	scr_play_sounds(snd_bookdrop1,snd_bookdrop2,snd_bookcrop3);
	scr_play_sounds(snd_dunk1,snd_dunk2,snd_dunk3);
	obj_player1.arm_state = "resting";
	instance_destroy(bk);
}

var bk = instance_place(x,y,obj_small_book_f);

if(bk != noone){
	instance_destroy(bk);
}

var wn = instance_place(x,y,obj_mini_wand);

//obj_player1.arm_state = "resting";

if(wn != noone){
	scr_play_sounds(snd_wandhit1,snd_wandhit2);
	scr_play_sounds(snd_dunk1,snd_dunk2,snd_dunk3);
	obj_player1.arm_state = "resting";
	instance_destroy(wn);
}