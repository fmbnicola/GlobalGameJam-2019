//Effect1
global.pt_bdust = part_type_create();
part_type_sprite(global.pt_bdust, spr_dust, false, false,true);
part_type_size(global.pt_bdust, 0, 0, 0.02, 0);
part_type_scale(global.pt_bdust, 7, 7);
part_type_orientation(global.pt_bdust, 0, 360, 2, 0, 0);
part_type_color3(global.pt_bdust, c_white, c_white, c_gray);
part_type_alpha3(global.pt_bdust, 1, 0.6, 0);
part_type_life(global.pt_bdust, 20, 30);
part_type_speed(global.pt_bdust, 3, 4, 0, 0);
part_type_direction(global.pt_bdust, 287, 287, 0, 0);
part_type_gravity(global.pt_bdust, 0.5, 98);