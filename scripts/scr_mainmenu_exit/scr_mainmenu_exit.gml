
draw_set_colour(c_white);
draw_text(4,40, "Quit Game?");

for (var i = 0; i < array_length_1d(menu_exit); i++){
	
	if(scr_draw_button(4,60+20*i)){
		show_debug_message("CLICK :"+string(i));
		select_exit = i;
		
		if(select_exit == 0){//yes
			game_end();
			
		}
		
		if(select_exit == 1){//no
			menuui = scr_mainmenu;
			
		}
	}
	
	draw_set_colour(c_white);
	
	draw_text(4,60+20*i, menu_exit[i]);
}