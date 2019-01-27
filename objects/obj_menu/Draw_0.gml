var i = 0;
repeat(buttons){
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	xx = menu_x;
	yy = menu_y + (button_h + button_padding) * i + 256*(1-unfold[i]);
	
	  
	
	draw_set_color(c_white);
	draw_rectangle(xx - button_w/2, yy, xx + button_w/2, yy + button_h, false);
	
	draw_set_color(c_black);
	
	
	if(menu_index == i){
		draw_set_color(make_color_hsv(0,0,200));
		draw_rectangle(xx - button_w/2, yy, xx + button_w/2, yy + button_h, false);
		draw_set_color(c_white);
	}
	draw_text(xx, yy + button_h/2, button[i]);
	i++;
}
	
	
if( gamepad_button_check(0,gp_face1) or keyboard_check(vk_space) or keyboard_check(vk_enter)){
	if(menu_index == 1){
		draw_sprite(spr_how_to_play,0,0,0)
	}
}