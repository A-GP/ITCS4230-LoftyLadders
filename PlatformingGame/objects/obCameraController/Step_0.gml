//The controller's y value will stay clamped to the player's lowest y value
if (instance_exists(obPlayer)) {
	y = clamp(y,-room_height,obPlayer.y);
	x = obPlayer.x;
}