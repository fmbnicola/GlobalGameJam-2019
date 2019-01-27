/// @description Insert description here
// You can write your code in this editor
if(abs(phy_speed_y) > 0.9 and can_play_again == true){
	can_play_again = false;
	alarm_set(1,room_speed*0.2);
	scr_play_sounds(snd_bookdrop1,snd_bookdrop2,snd_bookcrop3);
}
