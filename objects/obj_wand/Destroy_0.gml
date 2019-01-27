var inst = instance_create_layer(724,632,"Instances",obj_mini_wand);
with inst {
	physics_apply_impulse(x,y,-20,0);
	scr_play_sounds(snd_swoosh);
	scr_play_sounds(snd_wandhit1,snd_wandhit2);
	scr_play_sounds(snd_dunk1,snd_dunk3)
}