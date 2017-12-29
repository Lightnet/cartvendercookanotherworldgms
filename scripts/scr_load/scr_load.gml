


show_debug_message("load game");

if(file_exists("Save.sav")){
	show_debug_message("LOADING DATA SAVE!");
	var LoadFile = file_text_open_read("Save.sav");
	var LoadedRoom = file_text_read_real(LoadFile);
	file_text_readln(LoadFile);
	//file_text_close(LoadFile);
	
	show_debug_message("Room:"+string(LoadedRoom));
	
	//==============================================
	// user data
	//==============================================
	//var playername = file_text_read_string(LoadFile);
	//show_debug_message("playername:"+string(playername));
	var user_data = ds_map_create();
	//user_data = json_encode(user_data);	
	var t_user = file_text_read_string(LoadFile);
	file_text_readln(LoadFile);
	show_debug_message("t_user:" + t_user);
	user_data = json_decode(t_user);
	//user_data = base64_decode(user_data);
	
	//show_debug_message(string(t_user));
	//ds_map_read(user_data, t_user);
	//show_debug_message(string(user_data[? "name"]));
	show_debug_message(string(user_data[? "name"]));
	
	//var ItemCount = file_text_read_real(LoadFile);
	
	//==============================================
	// item data
	//==============================================
	
	
	var t_items = file_text_read_string(LoadFile);
	file_text_readln(LoadFile);
	show_debug_message("Items string:" + t_items);
	var item_data = json_decode(t_items);
	show_debug_message("Items:" + string(ds_map_size(item_data)));
	
	//show_debug_message("Name"+ item_data[? "meat"]);
	
	var key = ds_map_find_first(item_data);
	
	show_debug_message("KEY:"+ key);
	
	var size = ds_map_size(item_data);
	
	for (var i = 0; i < size-1; i++;)
	{
      key = ds_map_find_next(item_data, key);
	  if(key != noone){
		show_debug_message("KEY:"+ string(key));
	  }
	}
	
	//show_debug_message(item_data[? "meat"]);
	//var item_data = item_data[? "meat"];
	//show_debug_message(item_data[? "name"]);
	
	
	
	file_text_close(LoadFile);
}else{
//do nothing	
}