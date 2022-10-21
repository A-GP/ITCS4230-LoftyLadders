if (game_over) {
	if keyboard_check_pressed(vk_escape) room_goto(0);
	if keyboard_check_pressed(ord("R")) room_restart();
}
