draw_self();

var xx = x+sprite_width;
var yy = y+350;

draw_sprite_ext(spr_bubble,0,xx,yy,bubble_xscale,bubble_yscale,0,c_white,1);

if(bubble_xscale == 1){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_read);
	draw_set_color(c_black);
	draw_text_ext(xx+200,yy-200,message,30,320);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_read);
}