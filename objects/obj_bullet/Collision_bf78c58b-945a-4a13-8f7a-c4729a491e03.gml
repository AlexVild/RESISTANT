with(other) {
	audio_sound_pitch(snd_enemy_hit, random_range(0.8, 1.2));
	audio_play_sound(snd_enemy_hit, 1, false);
	hp -= 1;
}

instance_destroy();