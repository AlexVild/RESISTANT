// Movement
if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, spd);
}

img_dir = point_direction(x, y, obj_player.x, obj_player.y);
// Collision Detection
if (place_meeting(x + hspeed, y, obj_wall)) { // Horizontal
	while (!place_meeting(x + sign(hspeed), y, obj_wall)) x += sign(hspeed)
	hspeed = 0;
}
//x+= hspeed;
if (place_meeting(x, y + vspeed, obj_wall)) { // Down
	while (!place_meeting(x, y  + sign(vspeed), obj_wall)) y += sign(vspeed)
	vspeed = 0;
}
//y+= vspeed;

// Death
if(hp <= 0){
	with (obj_score) thescore = thescore + 5;
	audio_sound_pitch(snd_enemy_death, random_range(0.8, 1.2));
	audio_play_sound(snd_enemy_death, 0, false);
	instance_destroy();
}

