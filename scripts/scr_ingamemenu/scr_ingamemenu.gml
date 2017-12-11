
draw_set_colour(c_white);
draw_text(4,20,"[Menu]");

if(alarm[0] <= 0){
	
	if(obj_input.up_key){
		menu_y -= 1;
		if(menu_y < 0){
			menu_y = 0;
		}
		alarm[0] = room_speed / 8;
	}
	if(obj_input.down_key){
		menu_y += 1;
		if(menu_y > 9){
			menu_y = 9;
		}
		alarm[0] = room_speed / 8;
	}
}

for (var i = 0; i < array_height_2d(menus); i++){
	
	if(scr_draw_button(4,40+20*i)){
		show_debug_message("CLICK :"+string(i));
		menu_y = i;
		
		if(menu_y == 0){
			script_draw = scr_draw_status;
		}
		
		if(menu_y == 1){
			script_draw = scr_draw_items;
		}
		
		if(menu_y == 2){
			script_draw = scr_draw_equips;
		}
		
		if(menu_y == 3){
			script_draw = scr_draw_skills;
		}
		
		if(menu_y == 4){
			script_draw = scr_draw_craft;
		}
		
		if(menu_y == 5){
			script_draw = scr_draw_actions;
		}
		
		if(menu_y == 6){
			script_draw = scr_draw_companion;
		}
		
		if(menu_y == 7){
			script_draw = scr_draw_map;
		}
		
		if(menu_y == 8){
			script_draw = scr_draw_options;
		}
	}
	
	if(menu_y == i){
		draw_set_colour(c_gray);
	}else{
		draw_set_colour(c_white);
	}
	
	draw_text(4,40+20*i, menus[i,0]);
	
	if(script_draw != noone){
		script_execute(script_draw);
	}
}
