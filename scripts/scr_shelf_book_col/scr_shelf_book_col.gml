var shelf_fix = physics_fixture_create();

physics_fixture_set_box_shape(shelf_fix,100,5);
physics_fixture_set_density(shelf_fix,0);
physics_fixture_set_restitution(shelf_fix,0.5);
physics_fixture_set_linear_damping(shelf_fix,0);
physics_fixture_set_angular_damping(shelf_fix,0);
physics_fixture_set_friction(shelf_fix,0.5);
physics_fixture_set_collision_group(shelf_fix,1);

return shelf_fix;