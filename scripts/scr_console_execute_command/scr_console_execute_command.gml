///@param command_string

var command_string = argument0;

var command = "";
var arguments_string = "";
var len = string_length(command_string);

for(var i = 0; i <= len; i++){
	
	if(string_char_at(command_string,i) == "?"){
		
		command = string_copy(command_string,0,i-1);
		scr_console_command_help(command);
		scr_scroll2max();
		exit;
		
	}
	
	if(string_char_at(command_string,i) == "("){
		
		command = string_copy(command_string,0,i-1);
		arguments_string = string_copy(command_string,i+1,len-(i+1));
		break;
		
	}
}

//force line breaks in the console (useful if no spaces or in middle of word)
var breaks = floor(string_width(command_string)/(console_w - text_padding));
var len = string_length(command_string);

for(i = 1; i <= breaks; i++){
	var b_ind = 67 *i;
	command_string = string_insert("\n", command_string, b_ind);
}

console_text += command_string + "\n";

var args;

switch(command){

	default:
		console_text += "#Command does not exist#\n"; 
	break;
	
	case "nada":
	break;

	case "quit":
		game_end();
	break;
	
	case "restart":
		room_restart();
	break;
	
	case "clear":
		console_text = "";
	break;
	
	case "get_mouse_coords":
		console_text += "(" + string(mouse_x) + "," + string(mouse_y) + ")\n";
		
	break;
	
	case "get_closest_id":
		args =  scr_string_split(arguments_string,",");
		console_text += string(args[0]) +"\n";
		var obj = instance_nearest(mouse_x,mouse_y,asset_get_index(args[0]));
		if(obj != noone){
			console_text += "requested instance id:" + string(obj.id) +"\n";
		}
		else{
			console_text += "#object not found# \n";
		}
		
	break;
	
	case "create_object":
		args =  scr_string_split(arguments_string,",");
		instance_create_layer(real(args[0]),real(args[1]),"Instances", asset_get_index(args[2]));
	break;
	
	case "repeat":
		var comma       = string_pos(",",arguments_string);
		var n           = real(string_copy(arguments_string, 0, comma-1));
		var arg_command = string_copy(arguments_string, comma+1, string_length(arguments_string)-(comma));
		console_text += arg_command + "\n";	
		repeat(n){
			scr_console_execute_command(arg_command);
		}
	break;
	
	case "package":
		args =  scr_string_split(arguments_string,"#");
		
		console_text += "Executing Package" + "\n";
		
		for(i = 0; i < array_length_1d(args); i++){
			scr_console_execute_command(args[i]);
		}
	break;
	
	case "list_macros":
		var list = scr_console_macros(0);
		console_text += list + "\n";
	break;
	
	case "instance_get_var":
	case "instance_set_var":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		var c = (command == "instance_set_var");
		
		if((not c and array_length_1d(args) != 2) or (c and array_length_1d(args) != 3)){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
			
		var iid = int64(args[0]);
		
		if(!instance_exists(iid)){
			console_text += "Instance does not exist.\n";
			break;
		}
		
		if(!variable_instance_exists(iid,args[1])){
			console_text += "The instance does not have this variable.\n";
			break;
		}
		
		if(c){
			variable_instance_set(iid,args[1],scr_parse_string(args[2]));
		}
		
		console_text += "Id: " + args[0] + " Var: " + args[1] + " Val: " + string(variable_instance_get(iid,args[1])) + "\n";
		#endregion
	break;
	

}

scr_scroll2max();



