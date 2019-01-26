/// @description Insert description here
// You can write your code in this editor
event_inherited();
draw_script = scr_draw_bookcase;

image_speed = 0;
image_index = irandom_range(0,image_number);

/*
instance_create_layer(x,y+200,layer,obj_book_shelf);
instance_create_layer(x,y+120,layer,obj_book_shelf);
instance_create_layer(x,y+40,layer,obj_book_shelf);
instance_create_layer(x,y-40,layer,obj_book_shelf);

*/

//array that keeps the possible positions in the book case
book_h = 38;
instance_create_layer(x+16.5,y-40 - book_h,layer,obj_pivot);
instance_create_layer(x+50,y-40 - book_h,layer,obj_pivot);
instance_create_layer(x-16.5,y-40 - book_h,layer,obj_pivot);
instance_create_layer(x-50,y-40 - book_h,layer,obj_pivot);

instance_create_layer(x+16.5,y+40 - book_h,layer,obj_pivot);
instance_create_layer(x+50,y+40 - book_h,layer,obj_pivot);
instance_create_layer(x-16.5,y+40 - book_h,layer,obj_pivot);
instance_create_layer(x-50,y+40 - book_h,layer,obj_pivot);

instance_create_layer(x+16.5,y+120 - book_h,layer,obj_pivot);
instance_create_layer(x+50,y+120 - book_h,layer,obj_pivot);
instance_create_layer(x-16.5,y+120 - book_h,layer,obj_pivot);
instance_create_layer(x-50,y+120 - book_h,layer,obj_pivot);

instance_create_layer(x+16.5,y+200 - book_h,layer,obj_pivot);
instance_create_layer(x+50,y+200 - book_h,layer,obj_pivot);
instance_create_layer(x-16.5,y+200 - book_h,layer,obj_pivot);
instance_create_layer(x-50,y+200 - book_h,layer,obj_pivot);

