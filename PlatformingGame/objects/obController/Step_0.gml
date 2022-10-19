//The controller's y value will stay clamped to the player's lowest y value
if (instance_exists(obPlayer)) {
	y = clamp(y,-room_height,obPlayer.y);
	x = obPlayer.x;
}

//No enemies
if (global.NO_ENEMIES) {
	if (instance_exists(Obj_wizard) or instance_exists(Obj_ghosthori) or instance_exists(Obj_ghostvert)) {
		instance_destroy(Obj_wizard);
		instance_destroy(Obj_ghosthori);
		instance_destroy(Obj_ghostvert);
	}
}