if (instance_exists(obPlayer)) {
	global.POINTS = obPlayer.scr;
	global.CHECKPOINT = true;
	instance_destroy();
	
	audio_play_sound(sndCheckpoint,0,0);
	
	switch (cp_number) {
		case 0:
			global.CPN = 0;
		break;
		case 1:
			global.CPN = CP1;
		break;
		case 2:
			global.CPN = CP2;
		break;
		case 3:
			global.CPN = CP3;
		break;
		case 4:
			global.CPN = CP4;
		break;
		case 5:
			global.CPN = CP5;
		break;
		case 6:
			global.CPN = CP6;
		break;
		default:
			global.CPN = 0;
		break;
	}
}
