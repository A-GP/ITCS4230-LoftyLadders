if (instance_exists(obPlayer)) {
	if (electrified and !obPlayer.damageBuffer) {
		if (instance_place(x,y,obPlayer)) {
		obPlayer.hp = obPlayer.hp - 1;
		obPlayer.climbing = false;
		}
	}
}