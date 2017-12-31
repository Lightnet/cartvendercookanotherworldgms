playername = "None";
race = "human";
gender = "male";
age = 16;
job = "Cook (God Chef hidden)";
titles = [];
skills = [];



//items[0,0] = "meat";
//items[1,0] = "salt";
//items = array_create(0);

items = noone;

items = scr_item_add(items,"meat",1);
//show_debug_message("LEN:"+string(array_height_2d(items)));

items = scr_item_add(items,"salt",2);
items = scr_item_add(items,"sugar",4);

//len = array_height_2d(items);
//show_debug_message("LEN:"+string(len));
//show_debug_message("LEN:"+string(array_length_2d(items,0)));
for(var i =0; i < array_height_2d(items);i++){
	//if(items[i,0] != noone){
		show_debug_message("count:"+ string(i));
		show_debug_message("name:"+ items[i,0]);
		//show_debug_message("name:"+string(i));
	//}
}
