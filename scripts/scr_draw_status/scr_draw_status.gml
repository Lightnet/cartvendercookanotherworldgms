draw_text(140,40, "STATUS PANEL");

if(instance_exists(obj_user)){
	
	draw_text(140,40+15*1, "Name:"+ obj_user.playername);
	draw_text(140,40+15*2, "Race:" + obj_user.race);
	draw_text(140,40+15*3, "Gender:" + obj_user.gender);
	draw_text(140,40+15*4, "Age:" + string(obj_user.age));
	draw_text(140,40+15*5, "Job:" + obj_user.job);

	draw_text(140,40+15*7, "Titles:");

	draw_text(140,40+15*8, "Skills:");
}