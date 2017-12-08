
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

//show_debug_message(string(mouse_x) + ":" + string(mouse_y));

//mx = mouse_x;
//my = mouse_y;

//if((mx >= 0) and (mx <= 32)and(my >= 0) and (my <= 32)) {
	//show_debug_message("hit");
//}

//draw_rectangle(0,0,32,32,false);

//scr_draw_button(16,16);


for (var i = 0; i < array_height_2d(menus); i++){
	
	if(scr_draw_button(4,40+20*i)){
		show_debug_message("CLICK :"+string(i));
		menu_y = i;
	}
	
	if(menu_y == i){
		draw_set_colour(c_gray);
	}else{
		draw_set_colour(c_white);
	}
	
	draw_text(4,40+20*i, menus[i,0]);
}
