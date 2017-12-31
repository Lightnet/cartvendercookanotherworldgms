
draw_set_colour(c_white);
draw_text(4,40, "New Game");

if(scr_draw_button(4,60+20)){
	menuui = scr_mainmenu;
}
draw_set_colour(c_white);
draw_text(4,60+20, "Back");

if(scr_draw_button(4,120)){
	show_debug_message("toggle");
	if(bedit){
		bedit = 0;	
	}else{
		bedit = 1;
	}
}

draw_set_colour(c_white);
draw_text(4,120, "Name");

if(bedit){
	//draw_text(128+64,120, string(bedit));
	if(alarm[1] <= 0){
		if(btogglebar){
			btogglebar = 0;	
		}else{
			btogglebar = 1;
		}
		alarm[1] = room_speed / 6;
	}
	//playername = keyboard_string;
	var k=keyboard_lastkey;
	//show_debug_message("Key:"+string(k));
	if(k>=65 and k<=90 or k>=97 and k<=122 or k == 8){
		show_debug_message("Key:"+string(k));
		
		if (string_length(keyboard_string)<limit) 
			playername = keyboard_string;
		else
			keyboard_string = playername;
	}else{
		keyboard_string = playername;
	}
	
	if(btogglebar){
		displayname = playername;
	}else{
		displayname = playername + "|";
	}
}else{
	displayname = playername;	
}

draw_text(128+32,120, displayname);


if(scr_draw_button(4,140)){
	show_debug_message("toggle");
	if(gender){
		gender = 0;	
	}else{
		gender = 1;
	}
}

draw_set_colour(c_white);
draw_text(4,120+20, "Gender");

draw_text(128+32,120+20, "Male");

if(scr_draw_button(4,140+20)){
	show_debug_message("toggle");
	if(gender){
		gender = 0;	
	}else{
		gender = 1;
	}
}
draw_set_colour(c_white);
draw_text(4,120+20*2, "Job");

draw_text(128+32,120+20*2, "Cook");

if(scr_draw_button(4,140+20*3)){
	show_debug_message("start game");
	if(instance_exists(obj_user)){
		obj_user.playername = keyboard_string;
		
		room_goto(rm_prototype);
	}
}

draw_set_colour(c_white);
draw_text(4,120+20*4, "Start Game");