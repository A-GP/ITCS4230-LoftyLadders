if(instance_place(x,y,obPlayer) and !obPlayer.damageBuffer){
	obPlayer.hp--;
	obPlayer.climbing = false;
}