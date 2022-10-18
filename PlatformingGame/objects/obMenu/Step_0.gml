var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _enter = keyboard_check_pressed(vk_enter);

var _dir = _down - _up;
if (_dir != 0) {
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
				room_goto_next();
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
				
			break;
			case 1:
				//No enemies
				
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
