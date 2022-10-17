//push down
if(instance_place(x, y+.5, obPlayer)){
	obPlayer.hp = obPlayer.hp - 1
	obPlayer.climbing = false
	obPlayer.y = obPlayer.y + 30
}
//push up
if(instance_place(x, y-.5, obPlayer)){
	obPlayer.hp = obPlayer.hp - 1
	obPlayer.climbing = false
	obPlayer.y = obPlayer.y - 60
}



























