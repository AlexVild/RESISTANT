/// Movement
if (!hitstun) {
	dx = 0;
	dy = 0;
	if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
		dx = spd;
	}
	if (keyboard_check(vk_left)  || keyboard_check(ord("A"))){
		dx = -1* spd;	
	}
	if (keyboard_check(vk_down)  || keyboard_check(ord("S"))){
		dy = spd;
	} 
	if (keyboard_check(vk_up)  || keyboard_check(ord("W"))){
		dy = -1 * spd;
	}
	// Diaganol movement
	if (dx * dy != 0) {
		dx = dx/sqrt(2);
		dy = dy/sqrt(2);
	}
} else{
	hitstun = false // Hitstun only lasts one frame
}

img_dir = point_direction(x, y, mouse_x, mouse_y);

/// Collision Detection
collision = 0;
if (place_meeting(x + dx, y, obj_wall)) { // Horizontal
	while (!place_meeting(x + sign(dx), y, obj_wall)) x += sign(dx)
	dx = 0;
	collision = 1;
}
x+= dx;
if (place_meeting(x, y + dy, obj_wall)) { // Down
	while (!place_meeting(x, y  + sign(dy), obj_wall)) y += sign(dy)
	dy = 0;
	collision = 1;
}
y+= dy;

/// Invincible/Damage 
if (invincible) {
	if (current_visibility) {
		image_alpha = 0.6;
		frame_flash_count -= 1;
	} else {
		image_alpha = 1;
		frame_flash_count -= 1;
	}
}
if (frame_flash_count <= 0) {
	frame_flash_count = 6;
	current_visibility = !current_visibility;
}

/// Death
if (hp <= 0) {
	game_restart()
}

/// Schut
if (mouse_check_button(mb_left) && cooldown < 1){
	instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	cooldown = 3; 
}

cooldown -= .5;