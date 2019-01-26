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

draw_sprite(spr_book_covers,0,x+sprite_width,y);
}