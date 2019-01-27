{
#region Shader start
v_offset = shader_get_uniform(shdr_palette_swap, "Offset");
v_normal = book_id/256;

palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
texture_palette      = sprite_get_texture(spr_color_swap_palette,0);

shader_set(shdr_palette_swap);

texture_set_stage(palette_swap_sampler, texture_palette);

shader_set_uniform_f(v_offset, v_normal);
#endregion

draw_self();

shader_reset();

if(info != -1){
	switch(image_index){
		case 0:
			if(book_id < 65){
				draw_sprite(spr_book_covers,book_id,x+sprite_width/2,y+60);
			}
	
			draw_set_font(fnt_read);
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			draw_text_ext(x+sprite_width/2,y+(sprite_height-135)/5,info[0],24,150);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_font(fnt_console);
		break;
	
		case 1:
			draw_set_font(fnt_read);
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			draw_text_ext(x+sprite_width/2,y+(sprite_height-135)/2,info[1],24,200);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_font(fnt_console);
		break;
	}
}
}