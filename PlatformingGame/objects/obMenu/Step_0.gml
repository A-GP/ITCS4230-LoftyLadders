//menu_y = menu_y_target
//
//if (menu_control) {
//	if (keyboard_check_pressed(vk_up)) {
//		menu_cursor++;
//		if (menu_cursor >= menu_length) menu_cursor = 0;
//	}
//	
//	if (keyboard_check_pressed(vk_down)) {
//	menu_cursor--;
//	if (menu_cursor < 0) menu_cursor = menu_length-1;
//	}
//	
//	if (keyboard_check_pressed(vk_enter)) {
//		menu_y_target = gui_height + 200;
//		menu_committed = menu_cursor;
//		menu_control = false;
//	}
//}
//
//if (menu_y > gui_height + 150) && (menu_committed != -1) {
//	switch (menu_cursor)
//	{
//		case 0: 
//			game_end(); 
//		break;
//		case 1: 
//			game_restart() 
//		break;
//		case 2: default:
//			instance_destroy();
//			instance_create_layer(x,y,"Instances",obMenuSub);
//		break;
//
//
//	}
//}

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _enter = keyboard_check_pressed(vk_enter);

var _dir = _down - _up;
if (_dir != 0) {
	index += _dir;
	if (index < 0) {
		index = menu_length - 1;
	} else if (index >= menu_length) {
		index = 0;	
	}
}