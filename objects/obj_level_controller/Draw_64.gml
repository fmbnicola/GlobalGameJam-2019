draw_set_font(fnt_read);
var wd = string_width("SCORE: 00000");
var hg = string_height("SCORE: 00000")

var gwd = display_get_gui_width();

var x1 = gwd/2 - 32 - wd/2;
var x2 = x1 + 64 + wd;

x1 -= 50;
x2 -= 50;

var y1 = 0;
var y2 = hg + 64;

draw_set_color(c_white);
//draw_rectangle(x1,y1,x2,y2,false);
scr_9SB_ext(spr_score_9sb,x1,y1,x2,y2,1,1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x1 + (x2-x1)/2, y1 + (y2-y1)/2, "SCORE: " + string(score));

draw_set_halign(fa_left);
draw_set_valign(fa_top);