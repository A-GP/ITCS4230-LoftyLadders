if (instance_exists(obPlayer)) {
	if (electrified and !obPlayer.damageBuffer) {
		if (instance_place(x,y,obPlayer) and obPlayer.climbing) {
		obPlayer.climbing = false;
		obPlayer.hp = obPlayer.hp - 1;
		
		}
	}
}