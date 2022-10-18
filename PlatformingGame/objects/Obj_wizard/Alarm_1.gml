instance_create_layer(x, y, "Spells", Obj_spellslow);
path_start(Path_reverse, 1, path_action_stop, false);

alarm[0] = room_speed * (castTimer*2);

//bug where wizard would appear during the falling animation
if (instance_exists(obPlayerFalling)){
	instance_destroy();
}



































