draw_text(140,40, "Item PANEL");

//draw_text(140,40+15*1, "Name:");

if(instance_exists(obj_user)){
	
	for(var i = 0; i < array_height_2d(obj_user.items);i++){
		//obj_user.items
		
		if(scr_draw_button(140,60+20*i,128,18)){
			show_debug_message("press item");
		}
		draw_set_colour(c_white);
		draw_text(140,60+20*i, obj_user.items[i,0]);
		
	}
}