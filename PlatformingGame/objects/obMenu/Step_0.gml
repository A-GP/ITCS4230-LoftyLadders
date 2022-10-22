var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _enter = keyboard_check_pressed(vk_enter);

var _dir = _down - _up;
if (_dir != 0) {
	audio_play_sound(sndMenu,0,0);
	index += _dir;
	if (index < 0) {
		index = array_length(menu[sub_index]) - 1;
	} else if (index >= array_length(menu[sub_index])) {
		index = 0;	
	}
}

if (_enter) {
	switch (sub_index) {
		case 0:
		switch (index) {
			case 0:
				//Start
				room_goto(rmTutorial);
				audio_stop_sound(sndMenuSong);
			break;
			case 1:
				//Accesibility
				sub_index = 1;
				index = 0;
			break;
			case 2:
				//Exit
				game_end();
			break;
			}
		break;
		case 1:
		switch (index) {
			case 0:
				//Invincibility
				if (global.INVINCIBLE = false) {
					global.INVINCIBLE = true;
					menu[1][0] = "INVINCIBILITY [*]"
				} else if (global.INVINCIBLE = true) {
					global.INVINCIBLE = false;
					menu[1][0] = "INVINCIBILITY [ ]"
				}
			break;
			case 1:
				//No enemies
				if (global.NO_ENEMIES = false) {
					global.NO_ENEMIES = true;
					menu[1][1] = "NO ENEMIES [*]"
				} else if (global.NO_ENEMIES = true) {
					global.NO_ENEMIES = false;
					menu[1][1] = "NO ENEMIES [ ]"
				}
			break;
			case 2:
				//Back
				sub_index = 0;
				index = 1;
			break;
			}
		break;
	}
}
