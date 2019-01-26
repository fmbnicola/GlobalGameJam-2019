/// @description Insert description here
// You can write your code in this editor

randomize();

draw_script = noone;

physics_world_update_speed(room_speed*4);

x = 50;
y = 50;

//cursor
global.cursor = instance_create_layer(mouse_x,mouse_y,"Cursor",obj_phy_cursor);
global.cursor.target = "mouse";
global.cursor.visible = true;



//input
instance_create_layer(x+100,y,layer,obj_input);



//console
instance_create_layer(x+200,y,layer,obj_console);



//Windows
instance_create_layer(x+300,y,layer,obj_window_controller);



//draw controller
instance_create_layer(x+400,y,"Draw",obj_draw_controller);



//player
global.player = instance_create_layer(x+400,y+400,"Player",obj_player1);



//camera
global.camera = instance_create_layer(x+700,y+700,layer,obj_camera);

//data structure controller
instance_create_layer(x+400,y,layer,obj_ds_controller);

global.pause = false;

global.zoomed_in = false;

