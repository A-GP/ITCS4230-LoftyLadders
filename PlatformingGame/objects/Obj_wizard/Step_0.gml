if (instance_exists(obPlayer)){
	y = clamp(y,+room_height,obCameraController.y);
}

//bug where wizard would appear during the falling animation
if (instance_exists(obPlayerFalling)){
	instance_destroy()
}

































