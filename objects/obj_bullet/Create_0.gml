// Set up motion fam
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-4, 4);
speed = 16;
audio_sound_pitch(snd_laser, random_range(0.8, 1.2));
audio_play_sound(snd_laser, 1, 0);
image_angle = direction;