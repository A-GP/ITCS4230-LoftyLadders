//push to the right
if(instance_place(x+1, y, obPlayer)){
	instance_destroy();
	obPlayer.hp = obPlayer.hp - 1
	obPlayer.climbing = false
	obPlayer.x = obPlayer.x + 15
}
//push to the left
if(instance_place(x-1, y, obPlayer)){
	instance_destroy();
	obPlayer.hp = obPlayer.hp - 1
	obPlayer.climbing = false
	obPlayer.x = obPlayer.x - 15
}

instance_create_layer(x,y,"Instances",obSmoke);






































