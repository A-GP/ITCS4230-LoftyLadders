if (instance_exists(obPlayer)){
	audio_play_sound(sndWizard,0,0);
	sprite_index = spWizard;
	image_speed = 1;
	//path_start(Path_ghost1, 1, path_action_stop, false)
	while (x < 110) {
	x++;
}
	
	for (var i = 0; i < 10; i++) {
	instance_create_layer(126-irandom(32),y+24-irandom(48),"Spells",obSmoke);
	}
	
	alarm[2] = room_speed * castTimer;

	//alarm[0] = room_speed * castTimer
}

//bug where wizard would appear during the falling animation
if (instance_exists(obPlayerFalling)){
	instance_destroy();
}































