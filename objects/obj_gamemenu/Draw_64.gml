/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_white);
if(bshowhud){
	draw_text(4,4,"[TAB] = Close Menu");
}else{
	draw_text(4,4,"[TAB] = Show Menu");
}

if ( instance_exists(obj_input)){
	//show_debug_message("pass");
}

if(alarm[0] <= 0){
	if (obj_input.menu_key){
		if(bshowhud){
			bshowhud = false;
			global._ismenu = false;
		}else{
			bshowhud = true;
			global._ismenu = true;
		}
		alarm[0] = room_speed / 8;
	}
	
	if (obj_input.help_key){
		if(bhelpkey){
			bhelpkey = false;
		}else{
			bhelpkey = true;
		}
		alarm[0] = room_speed / 8;
	}
}

draw_set_colour(c_white);
draw_text(display_get_gui_width()-128,4,"[F1] = Help");

if(bhelpkey){
	draw_text(4,20*2,"[1] = Recipes");
	draw_text(4,20*3,"[2] = Cook");
	draw_text(4,20*4,"[3] = Seasonings");
	draw_text(4,20*5,"[4] = Drinks");
	draw_text(4,20*6,"[5] = Serve");
	
	exit;
}

if(bshowhud){
	//draw_text(4,20,"Panel Menu");
	script_execute(scr_ingamemenu);
}


