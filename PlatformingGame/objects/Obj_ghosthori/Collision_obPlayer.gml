if (!obPlayer.damageBuffer) {
	
//push down
if(instance_place(x, y+.5, obPlayer)){
	instance_destroy();
	obPlayer.hp = obPlayer.hp - 1
	obPlayer.climbing = false
	obPlayer.y = obPlayer.y + 15
}
//push up
if(instance_place(x, y-.5, obPlayer)){
	instance_destroy();
	obPlayer.hp = obPlayer.hp - 1
	obPlayer.climbing = false
	obPlayer.y = obPlayer.y - 30
}
instance_create_layer(x,y,"Instances",obSmoke);

}

























