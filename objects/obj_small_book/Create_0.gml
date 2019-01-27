event_inherited();
draw_script = scr_draw_small_book;
state = "side"; //(can be either back or side )

hp = 3;

info = -1;
alarm[0] = 5;

highlight = false;

color   =  0;
book_id = -1;

//create physics fixture
book_fix = physics_fixture_create();

physics_fixture_set_box_shape(book_fix,30,32);
physics_fixture_set_density(book_fix,0.01);
physics_fixture_set_restitution(book_fix,0.5);
physics_fixture_set_linear_damping(book_fix,0);
physics_fixture_set_angular_damping(book_fix,0);
physics_fixture_set_friction(book_fix,0.5);
physics_fixture_set_collision_group(book_fix,1);

my_fix = physics_fixture_bind(book_fix,id);

physics_fixture_delete(book_fix);

can_play_again = true;
