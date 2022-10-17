if (instance_exists(obPlayer)){
	path_start(Path_forward, 1, path_action_stop, false)
	
	alarm[1] = room_speed * castTimer
	//alarm[0] = room_speed * castTimer
}

//bug where wizard would appear during the falling animation
if (instance_exists(obPlayerFalling)){
	instance_destroy()
}




































