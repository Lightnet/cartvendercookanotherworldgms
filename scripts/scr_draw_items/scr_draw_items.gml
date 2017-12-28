//


draw_text(140,40, "Item PANEL");

//draw_text(140,40+15*1, "Name:");

if(instance_exists(obj_user)){
	
	for(var il = 0; il < array_height_2d(obj_user.items);il++){
		//obj_user.items
		
		if(scr_draw_button(140,60+20*il,128,18)){				
			if(alarm[0] <= 0){
				show_debug_message("press item selected");
				
				show_debug_message(obj_user.items[il,0]);
				alarm[0] = room_speed / 8;
			}
		}
		
		draw_set_colour(c_white);
		draw_text(140,60+20*il, obj_user.items[il,0]);
		
	}
}