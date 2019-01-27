
menu_x = x;
menu_y = y;
//button_h = 24;
//button_w = 256;

button_h = 96;
button_w = 1024;

button_padding = 8; //space between buttons


//buttons
button[0] = "Start Game";
button[1] = "How to Play";
button[2] = "Exit";
buttons = array_length_1d(button);

var i = 0;
repeat(buttons){
	unfold[i] = 0;
	i++;
}
menu_index = 0;
last_Selected = 0;