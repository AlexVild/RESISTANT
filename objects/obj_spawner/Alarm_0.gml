randomize();
x = random(room_width);
y = random(room_height);
if(!place_meeting(x, y, obj_wall) && !place_meeting(x, y, obj_player) && !place_meeting(x, y, obj_enemy)){ 
	instance_create_layer(x, y, "Instances", obj_enemyrespawn);
	alarm[0] = spawnrate;
} else {
	alarm[0] = 1;
}
