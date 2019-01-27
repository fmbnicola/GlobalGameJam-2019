//star
global.pt_star = part_type_create();
part_type_shape(global.pt_star, pt_shape_star);
//part_type_sprite(global.pt_star, spr_pt_shape_star, 0, 0, 0);
part_type_size(global.pt_star, 1, 1, -0.02, 0.05);
part_type_scale(global.pt_star, 1, 1);
part_type_orientation(global.pt_star, 0, 358, 0, 1, 1);
part_type_color3(global.pt_star, 2476520, 2476520, 2476520);
part_type_alpha3(global.pt_star, 1, 1, 1);
part_type_blend(global.pt_star, 0);
part_type_life(global.pt_star, 30, 60);
part_type_speed(global.pt_star, 1.5, 3, 0, 0);
part_type_direction(global.pt_star, 0, 360, 2, 0);
part_type_gravity(global.pt_star, 0, 0);
