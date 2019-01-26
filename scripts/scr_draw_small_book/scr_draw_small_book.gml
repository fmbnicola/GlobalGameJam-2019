#region Shader start
v_offset = shader_get_uniform(shdr_palette_swap, "Offset");
v_normal = book_id/256;

palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
texture_palette      = sprite_get_texture(spr_color_swap_palette,0);

shader_set(shdr_palette_swap);

texture_set_stage(palette_swap_sampler, texture_palette);

shader_set_uniform_f(v_offset, v_normal);
#endregion

if(highlight == true){
	if(state == "back"){
		draw_sprite_ext(spr_small_book_back,1,x,y,image_xscale,image_yscale,0,c_white,1);
	}
	else if(state == "side"){
		draw_sprite_ext(spr_small_book_side,1,x,y,image_xscale,image_yscale,-phy_rotation,c_white,1);
	}
}

if(state == "back"){
	draw_sprite_ext(spr_small_book_back,0,x,y,image_xscale,image_yscale,0,c_white,1);
}
else if(state == "side"){
	draw_sprite_ext(spr_small_book_side,0,x,y,image_xscale,image_yscale,-phy_rotation,c_white,1);
}

shader_reset();

physics_draw_debug();