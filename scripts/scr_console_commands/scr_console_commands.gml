command_list[0]="restart";
command_help[0]="restart() -> restarts the room";

command_list[1]="quit";
command_help[1]="quit() -> quits the game";

command_list[2]="get_mouse_coords";
command_help[2]="get_mouse_coords() -> returns the coords of the mouse in the room";

command_list[3]="clear";
command_help[3]="clear() -> clears the console";

command_list[4]="get_closest_id";
command_help[4]="get_closest_id(object_name) -> returns id of closest (to mouse) object with given name";

command_list[5]="create_object";
command_help[5]="create_object(x,y,object_name)-> spawns object with given name at given coords";

command_list[6]="repeat";
command_help[6]="repeat(n,command)-> runs command given n times";

command_list[7]="list_macros";
command_help[7]="list_macros() -> prints a list of all pre-programmed macros";

command_list[8]="package";
command_help[8]="package(cmd_1#cmd_2#cmd_3#...#cmd_n)-> executes package of commands (usefull for macros)";

command_list[9]="instance_get_var";
command_help[9]="instance_get_var(instance_id,variable_name)-> Gets the value of a variable in an instance.\n";

command_list[10]="instance_set_var";
command_help[10]="instance_set_var(instance_id,variable_name,value)-> Sets the value of a variable in an instance.\n";

number_of_commands = array_length_1d(command_list);




