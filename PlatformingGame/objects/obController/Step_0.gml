//No enemies
if (global.NO_ENEMIES) {
	if (instance_exists(Obj_wizard) or instance_exists(Obj_ghosthori) or instance_exists(Obj_ghostvert)) {
		instance_destroy(Obj_wizard);
		instance_destroy(Obj_ghosthori);
		instance_destroy(Obj_ghostvert);
	}
}

if (global.CHECKPOINT) {
	global.CP = global.CHECKPOINT;	
}

