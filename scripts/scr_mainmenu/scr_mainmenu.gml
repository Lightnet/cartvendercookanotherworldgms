

for (var i = 0; i < array_length_1d(menus); i++){
	
	if(scr_draw_button(4,40+20*i)){
		show_debug_message("CLICK :"+string(i));
		menu_y = i;
		
		if(menu_y == 0){
			menuui = scr_mainmenu_new;
		}
		
		if(menu_y == 1){
			menuui = scr_mainmenu_load;
		}
		
		if(menu_y == 2){
			menuui = scr_mainmenu_settings;
		}
		
		if(menu_y == 3){
			menuui = scr_mainmenu_exit;
		}
	}
	
	if(menu_y == i){
		draw_set_colour(c_gray);
	}else{
		draw_set_colour(c_white);
	}
	
	draw_text(4,40+20*i, menus[i]);
}