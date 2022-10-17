menu_y = menu_y_target

if (menu_control) {
	if (keyboard_check_pressed(vk_up)) {
		menu_cursor++;
		if (menu_cursor >= menu_length) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down)) {
	menu_cursor--;
	if (menu_cursor < 0) menu_cursor = menu_length-1;
	}
	
	if (keyboard_check_pressed(vk_enter)) {
		menu_y_target = gui_height + 200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_y > gui_height + 150) && (menu_committed != -1) {
	switch (menu_committed)
	{
		case 0: 
			instance_create_layer(x,y,"Instances",obMenu); 
			instance_destroy();
		break;	
		case 1: 
			game_restart() 
		break;
		case 2:
			default: room_goto_next();
		break;
	}
}