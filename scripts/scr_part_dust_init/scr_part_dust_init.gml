//Effect1
global.pt_dust = part_type_create();
part_type_sprite(global.pt_dust, spr_dust, false, false,true);
part_type_size(global.pt_dust, 0, 0, 0.02, 0);
part_type_scale(global.pt_dust, 1, 1);
part_type_orientation(global.pt_dust, 0, 360, 2, 0, 0);
part_type_color3(global.pt_dust, c_white, c_white, c_gray);
part_type_alpha3(global.pt_dust, 1, 0.6, 0);
part_type_life(global.pt_dust, 20, 30);
part_type_speed(global.pt_dust, 3, 4, 0, 0);
part_type_direction(global.pt_dust, 287, 287, 0, 0);
part_type_gravity(global.pt_dust, 0.35, 98);