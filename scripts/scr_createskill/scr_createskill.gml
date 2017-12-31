//arg
var tmp = noone;

show_debug_message("argument_count"+ string(argument_count));

if (argument_count > 0){
	tmp = argument[0];
	show_debug_message("argument_count"+ string(argument0));	
}


var data = ds_map_create();

show_debug_message("tmp build ?name");
if(tmp != noone){
	show_debug_message("name");
	//show_debug_message(tmp[? "name"]);
	
	show_debug_message(tmp);
	
}

data[? "name"] = "none";


return data;