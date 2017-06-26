/// For title screen menu
switch(mpos) {
	case 0: // New game
		audio_sound_gain(obj_title.title_song, 0, 500);
		room_goto_next();
		break;
	case 1:	// Continue
		break;
	case 2: // Level select (debug)
		break;
	case 3: // Options
		break;
	case 4: // Exit
		game_end();
		break;
}