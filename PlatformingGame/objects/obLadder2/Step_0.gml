if (instance_exists(obPlayer)) {
	if (electrified and !obPlayer.damageBuffer) {
		if (instance_place(x,y,obPlayer)) {
			obPlayer.climbing = false;
			obPlayer.hp -= 1;
		}
	}
}