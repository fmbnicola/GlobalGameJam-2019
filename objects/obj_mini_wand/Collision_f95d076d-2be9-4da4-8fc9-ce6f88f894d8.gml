/// @description Insert description here
// You can write your code in this editor

if(abs(phy_speed_y) > 0.9 and can_play_again){
	can_play_again = false;
	alarm_set(1,room_speed*0.4);
	scr_play_sounds(snd_wandhit1,snd_wandhit2,snd_wandhit3)
	scr_play_sounds(snd_wanddrop1,snd_wanddrop2);
}
