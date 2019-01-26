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

on_ladder = false;

//body
rotation             = 0;
rot_t                = 0;
wiggle_ammount       = 10;
wiggle_speed_target  = 5;
wiggle_speed         = 0;


//head
head_y = y - (200*image_yscale);
head_x = x;

//face
face_y = y - (200*image_yscale);
face_x = x;
face_sprite = 0; //(0 -> normal, 1 -> normal_blinking, 2 -> carrying something, 3 -> hidden);
face_off = 0;
face_off_target = 0;

alarm_set(0,room_speed*2); //blink every 2 secs

//arms 
arm1_x = x;
arm1_y = y;
arm2_x = x;
arm2_y = y;

arm1_rot_target = -120;
arm2_rot_target = -120;
arm1_rot = arm1_rot_target
arm2_rot = arm2_rot_target;

hand_target_resting = -120;
hand_target = [0,0];

arm_state = "aiming";

