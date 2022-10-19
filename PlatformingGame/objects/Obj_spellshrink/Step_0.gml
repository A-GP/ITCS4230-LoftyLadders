if (instance_exists(obPlayer)){
	if (x < obPlayer.x-32) {
	direction = point_direction(x,y,obPlayer.x,obPlayer.y);
	}
	speed = spellspeed
}
else{
	instance_destroy()
}

if (x > room_width) instance_destroy();








































