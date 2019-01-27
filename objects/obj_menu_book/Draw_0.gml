/// @description Insert description here
// You can write your code in this editor

v_offset = shader_get_uniform(shdr_palette_swap, "Offset");
v_normal = book_id/256;

palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
texture_palette      = sprite_get_texture(spr_color_swap_palette,0);

shader_set(shdr_palette_swap);

texture_set_stage(palette_swap_sampler, texture_palette);

shader_set_uniform_f(v_offset, v_normal);

draw_self();

shader_reset();