if (!electrified) {
electrified = true;
sprite_index = spElecLadderActive;
image_speed = 1;
alarm[0] = room_speed * 1;
} else if (electrified) {
	electrified = false;
	sprite_index = spElecLadder;
	image_speed = 0;
	alarm[1] = room_speed * 3;
	alarm[0] = room_speed * shockTimer;
}


