//push to the right
if(instance_place(x+1, y, obPlayer)){
	obPlayer.hp = obPlayer.hp - 1
	obPlayer.climbing = false
	obPlayer.x = obPlayer.x + 40
}
//push to the left
if(instance_place(x-1, y, obPlayer)){
	obPlayer.hp = obPlayer.hp - 1
	obPlayer.climbing = false
	obPlayer.x = obPlayer.x - 30
}






































