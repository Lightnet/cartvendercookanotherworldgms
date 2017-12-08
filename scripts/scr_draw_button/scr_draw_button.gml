px = argument[0];
py = argument[1];

width = 128;
height = 18;

//text = argument[2];

mx = mouse_x;
my = mouse_y;

click = false;

draw_set_colour(c_blue);
draw_rectangle(0+ px,0+ py,width + px,height + py,false);

if((mx >= 0 + px) and (mx <= width + px)and(my >= 0+ py) and (my <= height + py)) {
	//show_debug_message("hit");
	//draw_text(px, py, text);
	if(mouse_check_button_pressed(mb_left)){
		show_debug_message("press")
		click = true;
	}
}

return click;
