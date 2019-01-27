/// @description Insert description here
// You can write your code in this editor

var prob = irandom_range(0, 100);
if(prob < prob_of_spawning){
	var xx = irandom_range(-400, x_limit);
	instance_create_layer(xx, yy, "Books", obj_menu_book);
}