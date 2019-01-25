/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//general
draw_script = scr_player1_draw;
speed = 5;

phy_fixed_rotation = true;

image_speed  = 0;
image_index  = 0;

image_xscale = 0.25;
image_yscale = 0.25;

//body
rotation             = 0;
rot_t                = 0;
wiggle_ammount       = 10;
wiggle_speed_target  = 5;
wiggle_speed         = 0;


//head
head_y = y - (200*image_yscale);
head_x = x;
head_follow_speed = 5;

//face
face_y = y - (200*image_yscale);
face_x = x;
face_sprite = 0; //(0 -> normal, 1 -> normal_blinking, 2 -> carrying something, 3 -> hidden);

