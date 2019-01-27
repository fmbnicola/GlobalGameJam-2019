/// @description Insert description here
// You can write your code in this editor

switch(state){

	case "go_to_back":
	
		state = "back";
		
		//adjust position on bookshelf
		var pivot = instance_nearest(x,y,obj_pivot);
		if(pivot.free == false){
			state = "go_to_side";
		}
		phy_position_y = pivot.y;
		phy_position_x = pivot.x;
		
		//set fixtures
		if(my_fix != noone){
			physics_remove_fixture(id,my_fix);
		}
		
		book_fix = physics_fixture_create();

		physics_fixture_set_box_shape(book_fix,15,32);
		physics_fixture_set_density(book_fix,0);
		physics_fixture_set_restitution(book_fix,0.5);
		physics_fixture_set_linear_damping(book_fix,0);
		physics_fixture_set_angular_damping(book_fix,0);
		physics_fixture_set_friction(book_fix,0.5);
		physics_fixture_set_collision_group(book_fix,2);

		my_fix = physics_fixture_bind(book_fix,id);
		
		physics_fixture_delete(book_fix);
		
	break;
	
	case "go_to_side":
	
		state = "side";
		if(my_fix != noone){
			physics_remove_fixture(id,my_fix);
		}
		
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
	break;

	case "back":
		phy_rotation = 0;
		phy_fixed_rotation = true;
		layer = layer_get_id("books");
	break;


	case "side":
		phy_fixed_rotation = false;
		layer = layer_get_id("Instances");
	break;
	
	case "spawn":
	
		state = "back";
		if(my_fix != noone){
			physics_remove_fixture(id,my_fix);
		}
		
		book_fix = physics_fixture_create();

		physics_fixture_set_box_shape(book_fix,15,32);
		physics_fixture_set_density(book_fix,0);
		physics_fixture_set_restitution(book_fix,0.5);
		physics_fixture_set_linear_damping(book_fix,0);
		physics_fixture_set_angular_damping(book_fix,0);
		physics_fixture_set_friction(book_fix,0.5);
		physics_fixture_set_collision_group(book_fix,2);

		my_fix = physics_fixture_bind(book_fix,id);
		
		physics_fixture_delete(book_fix);
		
	break;
}