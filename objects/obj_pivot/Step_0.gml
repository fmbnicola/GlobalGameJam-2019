/// @description Insert description here
// You can write your code in this editor

var book = instance_nearest(x,y,obj_small_book);
if(book == noone){
	free = true;
}
else if(book.x == x and book.y == y){
	free = false;
}
else{
	free = true;
}