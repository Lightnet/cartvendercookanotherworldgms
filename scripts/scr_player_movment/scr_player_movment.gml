if(instance_exists(obj_input)){
	
}else{
	return;	
}

if (global._ismenu){
	exit;
}

if(obj_input.up_key){
	y-=movespeed;
}

if(obj_input.down_key){
	y+=movespeed;
}

if(obj_input.left_key){
	x-=movespeed;
}

if(obj_input.right_key){
	x+=movespeed;
}

