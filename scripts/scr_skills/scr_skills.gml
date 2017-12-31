list_skills = ds_map_create();

var skill = ds_map_create();
skill[? "information"] = "Fire element tree";
skill[? "level"] = 1;
skill[? "experience"] = 0;
skill[? "cost"] = 1;
skill[? "damage"] = 10;
skill[? "defense"] = 0;
skill[? "type"] = "";
skill[? "object"] = noone;

ds_map_add_map(list_skills, "fire", skill);
ds_map_destroy(skill);

var skill = ds_map_create();
skill[? "information"] = "Fire element tree";
skill[? "level"] = 1;
skill[? "experience"] = 0;
skill[? "cost"] = 1;
skill[? "damage"] = 10;
skill[? "defense"] = 0;
skill[? "type"] = "";
skill[? "object"] = noone;

ds_map_add_map(list_skills, "fire cook", skill);
ds_map_destroy(skill);




