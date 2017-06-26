if (!other.invincible) {
	instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "FlashLayer", obj_flash);
	audio_play_sound(snd_player_hit, 3, 0);
	other.invincible = true;
	other.current_visibility = true;
	other.alarm[0] = 120;
	other.hitstun = true;
}